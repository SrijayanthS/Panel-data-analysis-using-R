library(plm)
hurricanedata<-read.table("finaldataset.csv",header=T, sep=",")
Result <- plm(stockprice~goldprice+gas+orate+drate,
              data=hurricanedata[which(!is.na(hurricanedata$id)), ],
              model="within", index=c("id", "t"))
summary(Result)
