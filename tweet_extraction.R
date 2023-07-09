install.packages("rtweet")
install.packages("xlsx")

library(rtweet)
library(xlsx)

api_key <- "XXXXXXXXX"
api_secret_key <- "XXXXXXXXX"
access_token <- "XXXXXXXXX"
access_token_secret <- "XXXXXXXXX"
app_name <- "Analysis of sentiments"

token <- create_token(
  app = app_name,
  consumer_key = api_key,
  consumer_secret = api_secret_key,
  access_token = access_token,
  access_secret = access_token_secret)

tweetspresidenta <- search_tweets(q="@presidenciaperu",
                                  n= 10,
                                  include_rts = FALSE,
                                  lang = "es")
datos<-tweetspresidenta

write.xlsx2(datos, "tweetspresidencia2023.xlsx")