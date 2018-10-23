require(pacman)
p_load(sqldf,magrittr,stringr,readr,phrasemachine,plyr,httr,qdapRegex,futile.logger)

# TODO: move all this to Python?
# TODO: simplify some of this to generic functions

# Function to generate questions from bland headings
qgen <- function(y, ans, x=''){
  # TODO: Think about the best way toi generate natural language questions
  templates <- c(
    'How about {x} {y}?'
    ,'What is {x} {y}?'
    ,'Tell me about {x} {y}?'
  )
  
  g <- expand.grid(templates, x, y)
  g$ans <- ans
 
  sqldf("select replace(replace(var1, '{x}', var2), '{y}', var3) as q, ans as a from [g]")
}

root <- 'https://kb.omgcommunity.org/'
re_square <- '\\[.*\\]'
re_brace <- '\\([^()]+\\)'

flog.info("Get data from source markdown")
summaryLines <- read_lines('https://raw.githubusercontent.com/buildOMG/kb/master/SUMMARY.md')
summaryLines <- summaryLines[grep(re_square, summaryLines)]
flog.info("Extract title and link to seperate vectors")
xtitle <- str_extract_all(summaryLines, re_square)
xlink <- str_extract_all(summaryLines, re_brace)

# Problem here is multiple parenthesis in the markwodn. Maybe a more elegant way to do this?
flog.info("Cleanup titles and links")
titles <- vector()
for (i in 1:length(xtitle)){
  titles[i] <- head(xtitle[i][[1]], 1)
}
links <- vector()
for (i in 1:length(xlink)){
  url <- tail(xlink[i][[1]], 1)
  links[i] <- paste0('(', root, str_sub(url, 2, str_length(url)-1), ')')
}

flog.info("Add the cleaned titles and links to a data frame")
links <- paste(
  titles
  ,links
  ,sep=''
) %>% as.data.frame()
colnames(links) <- c('link')
# TODO: Seem to be doing the regex extractions too much. Too cleanup?
links$q <- str_replace_all(str_replace_all(str_extract_all(summaryLines, re_square), fixed('['), ''), fixed(']'), '')
links <- links[,c(2,1)]
links <- links[links$q != 'Current state',]

flog.info("Find links not currently phrased as a question")
vq <- str_which(links$q, '\\?')
vnonq <- setdiff((1:nrow(links)), str_which(links$q, '\\?'))
bookQuestions <- links[vq,]
bookNotQuestions <- links[vnonq,]

flog.info("Generate questions")
gen_qs <- apply(bookNotQuestions, 1, function(x) qgen(x[1], x[2])) %>% rbind.fill()
qna_q <- sqldf("
               select q as question
               ,'See: ' || a as answer
               ,'GitBook' as source
               ,'' as meta
               from [gen_qs]
union
               select q as question
               ,'See: ' || link as answer
               ,'GitBook' as source
               ,'' as meta
               from [bookQuestions]
               ")

flog.info("Drop stuff under the deep dive header")
qna_q <- qna_q[(setdiff(1:nrow(qna_q), grep('deep-dive', qna_q$answer))),]
qna_q$answer <- str_replace_all(qna_q$answer, fixed('.md'), '')

flog.info("Test generated links")
# test all of the auto-generated links here?
for(i in 1:length(qna_q$answer)){
#for(i in 1:5){
  # url <- ex_url(qna_q$answer[i], pattern = "@rm_url3")[[1]]
  url <- tail(str_extract_all(qna_q$answer[i], "\\([^()]+\\)")[[1]], 1)
  url <- str_sub(url, 2, str_length(url)-1)
  flog.info("Testing URL %s", url)
  # TODO: Remove link if it errored
  tryCatch(
    !http_error(url, config(followlocation = 0L), USE.NAMES = FALSE),
    error = function(e) flog.error("URL FAILED: %s", url)
  )
}

# Output to TSV
write_tsv(qna_q, 'qna_gitbook.tsv')