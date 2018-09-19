apple = read.table("C:\\Users\\daasca\\Documents\\uscrime.txt", header=T, stringsAsFactors = F)
plot(apple, x=10, y=100)

library(lattice)
apple = read.table("C:\\Users\\daasca\\Documents\\uscrime.txt", header=T, stringsAsFactors = F)#
DT <- apple.table(a = 1:11)
print(DT, nrows = 100, topn = 4)

apple = read.table("C:\\Users\\daasca\\Documents\\uscrime.txt", header=T, stringsAsFactors = F)#
library(ggplot2)
ggplot(apple, aes(m, crime))


library(lattice)
apple = ("C:\\Users\\daasca\\Documents\\uscrime.txt", header=T, stringsAsFactors = F)#
DT <- apple.table(a = 1:11)
print(DT, nrows = 100, topn = 4)

x <- c(1:5); y <- x # create some data
par(pch=22, col="red") # plotting symbol and color
par(mfrow=c(2,4)) # all plots on one page
opts = c("p","l","o","b","c","s","S","h")
for(i in 1:length(opts)){
  heading = paste("type=",opts[i])
  plot(x, y, type="n", main=heading)
  lines(x, y, type=opts[i])
}

crime <- c(0:2500); y <- x # create some data
par(pch=22, col="red") # plotting symbol and color
par(mfrow=c(2,4)) # all plots on one page
opts = c("p","l","o")
for(i in 1:length(opts)){
  heading = paste("Crime",opts[i])
  plot(x, y, type="n", main=heading)
  lines(x, y, type=opts[i])
}


###using data from http://www.iweathernet.com/atlanta-weather-records
###to create a visual. We may find outliers from looking at the data
### if you are looking for the plots in R and Excel, please visit
### mathdtb.com



x1 = read.table("C:\\Users\\daasca\\Documents\\uscrime.txt", header=T, stringsAsFactors = F)
Crimes_Per_100k = (x1[,c(16)])
Education_Level = (x1[,c(4)])
par(pch=19, col="blue")
plot(Crimes_Per_100k,Education_Level, xlim = c(0, 2000), ylim=c(0,2000 ))



grubbs.test(Crimes_Per_100k, type = 11)
grubbs.test(Crimes_Per_100k, type = 10, opposite = FALSE)
grubbs.test(Crimes_Per_100k, type = 10, opposite = T)
grubbs.test(Crimes_Per_100k, type = 20)