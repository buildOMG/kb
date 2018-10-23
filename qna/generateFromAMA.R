require(pacman)
p_load(sqldf,magrittr,stringr,readr,phrasemachine,plyr,httr,qdapRegex,futile.logger)

# TODO: move all this to Python?

#####################################################################################
##
## @Nebali is changing the way the anchors work so will redo some of this
##
#####################################################################################
re_square <- '\\[.*\\]'
re_brace <- '\\([^()]+\\)'
root <- 'https://kb.omgcommunity.org/'
kbLines <- read_lines('https://raw.githubusercontent.com/buildOMG/kb/master/kb.md')

# Loop over files generating QnA pairs
question <- ''
answer <- ''
foundQs <- F
qna_q <- data.frame(Q=as.Date(character()),A=character())
for(i in 1:length(kbLines)){
  if(grepl('^###', kbLines[i])){
    foundQs <- T
    row <- as.data.frame(cbind(as.character(question), as.character(answer)))
    qna_q <- rbind.data.frame(qna_q, row)
    question <- kbLines[i]
    answer <- ''
  } else {
    if(foundQs){
      answer <- paste(answer, kbLines[i], sep = ' ')
    }
  }
}
colnames(qna_q) <- c('question', 'answer')

# Clean up questions
qna_q$question <- as.character(qna_q$question)
qna_q$question <- str_replace_all(qna_q$question,'### ', '')
qna_q$question <- str_replace_all(qna_q$question,fixed("\\"), '') # Prob not necessary
qna_q$question <- str_squish(qna_q$question)
# Clean up answers
qna_q$answer <- as.character(qna_q$answer)

flog.info("Extract title and link to seperate vectors")
xtitle <- str_extract_all(qna_q$question, re_square)
xlink <- str_extract_all(qna_q$question, re_brace)

flog.info("Cleanup titles and links")
titles <- vector()
for (i in 2:length(xtitle)){
  titles[i] <- head(xtitle[i][[1]], 1)
}
links <- vector()
for (i in 2:length(xlink)){
  url <- tail(xlink[i][[1]], 1)
  links[i] <- paste0('(', str_sub(url, 2, str_length(url)-1), ')')
}

flog.info("Add the cleaned titles and links to a data frame")
qna_q <- cbind(
  titles
  ,links
) %>% as.data.frame()
colnames(qna_q) <- c('question','answer')
qna_q %>% View

# qna_q$answer <- str_replace_all(qna_q$answer,fixed('>'), '')
# qna_q$answer <- str_replace_all(qna_q$answer,fixed('\\s+'), '')
# qna_q$answer <- str_squish(qna_q$answer)
# qna_q$source <- 'AMA'
# qna_q$meta <- ''
# 
# xxx <- str_replace_all(qna_q$question, '[^A-Za-z ]', '')
# xxx <- str_replace_all(xxx, ' ', '-')
# xxx[1]


# Remove any dodgy, like the header row
qna_q <- qna_q[str_length(qna_q$question) > 3,]
qna_q$source <- 'GitBookAMA'
qna_q$meta <- ''

qna_q$question <- as.character(qna_q$question)
qna_q$answer <- as.character(qna_q$answer)

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
write_tsv(qna_q, 'qna_AMA.tsv')
