
stats<- read.csv(file.choose())
#---------------------------DataFrame from vectors
df1960<-data.frame(Country_Code,lifeexpectancy=Life_Expectancy_At_Birth_1960)
head(df1960)
df2013<-data.frame(Country_Code,lifeexpectancy=Life_Expectancy_At_Birth_2013)
head(df2013)


#---------------------------Division of CSV in two years
head(stats)
stats1960<- stats[stats$Year==1960,]
head(stats1960)
stats2013<-stats[stats$Year==2013,]
head(stats2013)
stats2013$Year==1960


#---------------------------Merrging the dataframes
merged1960<-merge(stats1960,df1960,by.x ="Country.Code", by.y = "Country_Code")
head(merged1960)
merged2013<- merge(stats2013,df2013,by.x="Country.Code",by.y = "Country_Code")
head(merged2013)
#---------------------------Plotting
?qplot()
install.packages("ggplot2")
qplot(merged1960,x=Fertility.Rate,y=lifeexpectancy,colour=Country.Code,size=I(4))
library(ggplot2)
qplot(data=merged1960,x=Fertility.Rate,y=lifeexpectancy,colour=Region,size=I(4))
qplot(data=merged2013,x=Fertility.Rate,y=lifeexpectancy,colour=Region,size=I(4))
getwd()
setwd("D:\\R PROGRAMMING A-Z R FOR DATA SCIENCE WITH REAL EXERCISES\\06 Advanced Visualization With GGPlot2")
getwd()
