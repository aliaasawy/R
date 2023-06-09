install.packages("ggplot2")
library(ggplot2)


x <- 5
class(x)

y <- seq(1, 10)
x <- seq(1, 10, 2)
plus5 <- x + 5
name1 <- c(2, 6, 1, 8, 4)
name2 <- c( seq(1, 10, 4) )
print(max(name1))
print(sort(name1, decreasing=T))
---------------------------------------------------
  
  







marks <- c(10, 20, 30, 40)
names(marks) <- c("x1", "x2", "x3", "x4")
marks[2]
marks[ ! names(marks) %in% c("x1", "x4") ]

mat <- matrix( c(1:10) , nrow=2, byrow = T)

mat[,2]


rownames <- c("x1", "x2")
columnnames <- c("y1", "y2", "y3", "y4", "y5")

mat <- matrix( c(1:10) , nrow=2, byrow = T, dimnames=list(rownames, columnnames))


--------------------------------------------------------------------------------
salaries <- matrix(c(100, 120, 130), nrow=2, byrow=T,
                     dimnames = list(c("X", "Y"), c("Egy", "USA")))
dis <- matrix(c(50, 20, 30), nrow=2, byrow=T)
salaries - dis
tc <- colSums(salaries)
tr <- rowSums(salaries)
colMeans(salaries)
rowMeans(salaries)

newSalaries <- rbind(salaries, tc, tr)
lst1<-list(2, 5, 7)
lst2<-list(1:10, 5)
lst3<-list(1:5, 22, T, "FCI", c("a", "b", "c"))
typeof(lst3[[1]])
class(lst3)
str(lst3)
lst4<-list(c("red", "blue") , 1:10 , TRUE)
names(lst4)<-(c("colors", "seq", "Flag"))
lst5<-list(colors = c("red", "blue") , seq = 1:10 , Flag = TRUE)
lst5[1]
lst5[["colors", fla]]
lst5$colors
lst5[ c(-1, -2) ]
lst5[length(lst5) + 1]<- "newOne"
lst5["NameofNewElem"] <- 'value5'

lst5$NameofNewElem <- NULL
lst5['NameofNewElem'] <- NULL

lst6 <- list(1, 2, 3, 4)
class(lst6)
v1 <- unlist(lst6)
class(v1)


gender <- c("M", "P", "M", "M", "P", "M")
factorGender <- factor(gender)
summary(factorGender)
levels(factorGender) <- c("Female", "Male")


temperatures <- c("H", "M", "L", "L", "L", "H")
temperaturesFactor <- factor(temperatures, ordered = TRUE,
                             levels=c("L", "M", "H"))
levels(temperaturesFactor) <- c("High", "Low", "Med")
temperaturesFactor
temp1 <- temperaturesFactor[2]
temp2 <- temperaturesFactor[6]
print(temp1)
print(temp2)
temp1 > temp2
"M" > "H"


if (50 >= 30)
  print("Hot")
if (20 == 30)
  print("Hot") else
  print("Cold")

if (50 >= 90) {
  print("A") }else
    if(50 <= 80){
      print("B")}

x <- 1
while( x <= 5 ){
  print(x)
  x <- x+1
  if(x == 3)
    break }

x <- 1
repeat{
  print(x) 
  x <- x+1 
  if(x >= 6)
    break }

a = list(1, 10, 30, 50)
for (x in 1:5)
  print(x)

functionName <- function (arg1, arg2, ....) {
  function body
  return (....)
}

def functionName(arg1, arg2, ....):
  function body
  return ....
  
calcSalary <- function(salary, hwafz=300){
    return (salary + 100 + hwafz)
}
calcSalary(5000, 400)

f1 <- function(a, b, c){
  print(a)
  print(b)
  print(c)
}
f1(1, 2)
class(lst1)
weatherInfo <- list(city="Minia", degrees=c(12, 15, 15, 16, 20, 5),
                    regions=c("Xregion", "Yregion", "Zregion"))
a = c(1, 2, 3, 4, 5)
saher = function(lst, i){
  return (lst + i)
}
lapply(a, saher, 50)
#a + 5
s = sapply(a, saher, 50)
sum(s)
str(weatherInfo)


stdDegrees <- c(12, 43, 35, 27, 30)
addDegree <- function (degree){
  if(degree > 30)
    return (degree) else
      return(degree + 3) }
a = lapply(stdDegrees, addDegree)
b = sapply(stdDegrees, addDegree)
sum(b)
----------------------------------------------------------------------------





title <- c("X", "Y", "Z", "W")
year <- c(1999, 2000, 2010, 2012)
length <- c(20, 25, 30, 120)
author <- c("Xauthor", "Yauthor", "Zauthor", "Wauthor")
films <- data.frame(title, year, length, author)
films

names(films) <- c("Movie title", "Release year", "Length in min", "Author
name")

rownames(films) = c("Saher", "Mustafa", "Ali", "Mohamed")

str(films)
films[, c("Movie title", "Release year")]
result <- data.frame(films['Movie title'],films["Release year"])
result <- films$Movie_title
print(result)

films$type <- c("Silent", "Historical", "Documentary", "Drama")

title <- c("A", "B")
year <- c(2015, 2016)
length <- c(40, 45)
author <- c("Aauthor", "Bauthor")
type <- c("aasd", "sacasd")
newfilms <- data.frame(title, year, length, author, type)
Allfilms <- rbind(films, newfilms)
Allfilms

getwd()
setwd("E:/programming language/Excel Course/Data Analysis with Excel")
getwd()
bank <- read.csv("bank-full.csv", header=T, stringsAsFactors = T)
dim(bank)

bank2 <- read.delim("a.txt", header=T, sep=",")
---------------------------------------------------------------
setwd("C:/Users/Ali/Desktop")
getwd()
title <- c("X", "Y", "Z", "W")
year <- c(1999, 2000, 2010, 2012)
length <- c(20, 25, 30, 120)
author <- c("Xauthor", "Yauthor", "Zauthor", "Wauthor")
films <- data.frame(title, year, length, author)
write.csv(films, file="films.csv")

filmsdata <- read.csv('films.csv')
View(filmsdata)
summary(filmsdata)
str(filmsdata)


head(filmsdata[,-c(4)], 2)
Per.type1 <- filmsdata[,"length"]
Per.type2 <- filmsdata[["length"]]
Per.type3 <- filmsdata["length"]
class(Per.type)


filmsdata[filmsdata$length == 120,]

filmsdata[filmsdata$year > 2000 & filmsdata$title == "Z",c(2)]

a <- filmsdata[order(- filmsdata$length) , ]
filmsdata = cbind(films, hamada=c('M', 'F', 'F', 'M'))
filmsdata['hamada'] = NULL
filmsdata['newGender'] = NULL

filmsdata$newGender[filmsdata$hamada == 'M'] = '1'
filmsdata$newGender[filmsdata$hamada == 'F'] = '2'
class(filmsdata$newGender)
filmsdata$newGender = as.factor(filmsdata$hamada)
class(filmsdata$newGender)
str(filmsdata)
filmsdata$summation <- filmsdata$X + filmsdata$length

films[order(films$title),]
films[c(F, T, F, F),]

films$incomeCats[films$length < 25] = 'low'
films$incomeCats[films$length >= 25 & films$length <= 30] = 'medium'
films$incomeCats[films$length > 30] = 'high'

str(films)

films['new'] = films['year'] + films['length']
---------------------------------------
  
  
films <- read.csv('films.csv')
films$na = c(' ', ',', 'na', '$')
write.csv(films, 'films_mode.csv')

getwd()
setwd('C:\Users\Ali\Desktop')
f <- read.csv('films_mode.csv', na.strings = c(' ', ',', '$'))
f[!complete.cases(f),]


str(f)
summary(f)

test <- factor(c('14', '13', '12', '11'))
str(test)
test <- as.numeric(test)
str(test)
print(test)

test <- as.numeric(as.character(test))
test

phone = c('010', '010hghg', 'vf15', '999')
f = cbind(f, phone)
f$phone = gsub('hghg', '', f$phone)
f$phone = gsub('vf', '123456', f$phone)
f$phone = NULL
as.numeric(f$phone)

f[1, 'phone'] = 10800000

install.packages("mice", type="binary")
install.packages("mice")
library(mice)
---------------------------------------
  
  
demo = c(1, 2, NA, 4, NA, 6, 7)
is.na(demo)



setwd("C:/Users/Ali/Desktop")

is.na(f)
f[!is.na(f$na),]

f[is.na(f$na) & f$title == 'X','na'] = 'ny'
z = f[!is.na(f$na),]

install.packages("tidyr")
library(tidyr)
data("airquality")
mydata = airquality
mydata
f$new = as.factor(ifelse(f$title == 'X', "bad", "good"))

med = median(mydata[ , 'Ozone'] ,na.rm=T)

ss = mydata[is.na(mydata$Ozone) & mydata$Temp == 56, 'Ozone'] <- med


install.packages("tidyverse")
library(tidyverse)

library(ggplot2)
data("airquality")
draw1 <- ggplot(airquality)
draw1 <- ggplot(airquality, aes(x=Ozone, y=Temp))
draw1
draw1 + geom_point()


mydata <- read.csv("titanic.csv")
draw_hist <- ggplot(mydata, aes(Age))
draw_hist
draw_hist + geom_histogram()
draw_hist + geom_histogram(binwidth = 5)
draw_hist + geom_histogram(color="black")
draw_hist + geom_histogram(color="black", fill="blue")
draw_hist + geom_histogram() + ggtitle("Age of Passengers")
draw_hist + geom_histogram() + labs(x="Passenger age", y="Numbers")

draw_bar <- ggplot(mydata, aes(x=Survived))
draw_bar + geom_bar()
draw_bar + geom_bar() + theme_light()
draw_bar + geom_bar() + labs(y="Passenger count",
                             title = "Survival Rate")
draw_bar + geom_bar() + facet_wrap(~Sex)