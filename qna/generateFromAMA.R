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
df <- data.frame(Q=as.Date(character()),A=character())
for(i in 1:length(kbLines)){
  if(grepl('^###', kbLines[i])){
    foundQs <- T
    row <- as.data.frame(cbind(as.character(question), as.character(answer)))
    df <- rbind.data.frame(df, row)
    question <- kbLines[i]
    answer <- ''
  } else {
    if(foundQs){
      answer <- paste(answer, kbLines[i], sep = ' ')
    }
  }
}
colnames(df) <- c('question', 'answer')

# Clean up questions
df$question <- as.character(df$question)
df$question <- str_replace_all(df$question,'### ', '')
df$question <- str_replace_all(df$question,fixed("\\"), '') # Prob not necessary
df$question <- str_squish(df$question)
# Clean up answers
df$answer <- as.character(df$answer)

flog.info("Extract title and link to seperate vectors")
xtitle <- str_extract_all(df$question, re_square)
xlink <- str_extract_all(df$question, re_brace)

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
links <- cbind(
  xtitle
  ,xlink
) %>% as.data.frame()
colnames(links) <- c('link')
links %>% View

df$answer <- str_replace_all(df$answer,fixed('>'), '')
df$answer <- str_replace_all(df$answer,fixed('\\s+'), '')
df$answer <- str_squish(df$answer)
df$source <- 'AMA'
df$meta <- ''

xxx <- str_replace_all(df$question, '[^A-Za-z ]', '')
xxx <- str_replace_all(xxx, ' ', '-')
xxx[1]

the-cosmos-hard-spoon-has-been-described-as-a-test-net-by-community-members-but-in-a-blog-post-you-mention-healthy-competition-can-you-clarify-this-tokens-short-term-and-long-term-purpose-i-e-where-will-volume-come-from-who-will-be-managing-promoting-it-and-is-it-something-that-will-be-supported-long-term-or-dropped-in-favor-of-plasma

df$question[2]



# Remove any dodgy, like the header row
df <- df[str_length(df$question) > 3,]

# Output to TSV
write_tsv(df, 'qna_AMA.tsv')
