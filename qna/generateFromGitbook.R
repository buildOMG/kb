require(pacman)
p_load(sqldf,magrittr,stringr,readr,phrasemachine,plyr,httr,qdapRegex,futile.logger)

# TODO: move all this to Python

#raw_q <- read_csv('c:/source/OMQ/omisego-report.csv')
#colnames(raw_q)

# qna_q <- sqldf("
#                select Question as question
#                ,'See: ' || [Source URL] as answer
#                ,'questiondb' as source
#                ,'' as meta
#                from [raw_q]
#                ")
# 
# write_tsv(qna_q, 'c:/source/OMQ/kb/qna/qna_questiondb.tsv')


qgen <- function(y, ans, x=''){
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
summaryLines <- read_lines('https://raw.githubusercontent.com/buildOMG/kb/master/SUMMARY.md')
summaryLines <- summaryLines[grep('.*\\[.*\\].*', summaryLines)]

xxx <- str_extract_all(summaryLines, '\\[.*\\]')
yyy <- str_extract_all(summaryLines, "\\([^()]+\\)")

titles <- vector()
for (i in 1:length(xxx)){
  titles[i] <- head(xxx[i][[1]], 1)
}
links <- vector()
for (i in 1:length(yyy)){
  links[i] <- tail(yyy[i][[1]], 1)
}

links <- paste(
  titles
  ,links
  ,sep=''
) %>% as.data.frame()
colnames(links) <- c('link')
##links$link <- str_replace_all(links$link, fixed('('), paste0('(', root))
links$q <- str_replace_all(str_replace_all(str_extract_all(summaryLines, '\\[.*\\]'), fixed('['), ''), fixed(']'), '')
links <- links[,c(2,1)]
links <- links[links$q != 'Current state',]
# gen_qs <- rbind(
# qgen('Business development', 'https://kb.omgcommunity.org/deep-dive/business-development')
# ,qgen('partnerships', 'https://kb.omgcommunity.org/deep-dive/business-development/partnerships')
# )

vq <- str_which(links$q, '\\?')
vnonq <- setdiff((1:nrow(links)), str_which(links$q, '\\?'))
bookQuestions <- links[vq,]
bookNotQuestions <- links[vnonq,]
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

# Drop the deep-dive stuff
qna_q <- qna_q[(setdiff(1:nrow(qna_q), grep('deep-dive', qna_q$answer))),]
qna_q$answer <- str_replace_all(qna_q$answer, fixed('.md'), '')


# test all of the auto-generated links here?
for(i in 1:length(qna_q$answer)){
#for(i in 1:5){
  # url <- ex_url(qna_q$answer[i], pattern = "@rm_url3")[[1]]
  url <- tail(str_extract_all(qna_q$answer[i], "\\([^()]+\\)")[[1]], 1)
  url <- paste0(root, str_sub(url, 2, str_length(url)-1))
  flog.info("Testing URL %s", url)
  tryCatch(
    !http_error(url, config(followlocation = 0L), USE.NAMES = FALSE),
    error = function(e) flog.error("URL FAILED: %s", url)
  )
}

# TODO: remove local ref here. Will do this if I add a project. Most likely will mode to Python though
write_tsv(qna_q, 'c:/source/sa/OMQ/kb2/qna/qna_gitbook.tsv')