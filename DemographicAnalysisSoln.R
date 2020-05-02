library(ggplot2)
install.packages("ggplot2")
?qplot()

stats<-read.csv(file.choose())
head(stats)
mydf<-data.frame(Country=Countries_2012_Dataset,Code=Codes_2012_Dataset,
                 Region=Regions_2012_Dataset)
head(mydf)
merged<-merge(stats,mydf,by.x = "Country.Code",by.y = "Code")
head(merged)
merged$Country<-NULL
qplot(data=merged, x=Internet.users,y=Birth.rate,colour=Region
      ,size=I(5),shape=I(17))
