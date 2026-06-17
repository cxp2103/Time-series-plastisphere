x <- read.delim('mag1.txt',header = FALSE)
result_df <- data.frame(col1 = character(),
                        col2 = character(),
                        stringsAsFactors = FALSE)
n <- 1
for (i in x$V1){
  Tb <- read.delim(i,header = FALSE)
  a <- subset(Tb,grepl(">",V1))
  result_df <- rbind(result_df,data.frame(col1 = a,
                                          col2 = as.character(n),
                                          stringsAsFactors = FALSE))
  n <- n+1
}

write.csv(result_df,file = "result_df.csv")
