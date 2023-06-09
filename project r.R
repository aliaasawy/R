AllometryData <- read.csv('G1_Allometry.csv')
AllometryData
View(AllometryData)

nrow(AllometryData)# number of rows 
ncol(AllometryData)  #number of col
rownames(AllometryData)
colnames(AllometryData) # name to cols

str(AllometryData)
summary(AllometryData)  #  statistics of data mean,mode....

head(AllometryData) # first 6 rows 
tail(AllometryData)  # last six rows 

#Select specific data.
Z <- Allomentry[ 1, 5 ]
Z

Setinfo
# can get first 7 row
Setinfo <- head(Allomentry,7)
Setinfo


Allomentry <- data.frame(AllometryData) 
Allomentry
 
Result <- data.frame(Allomentry[Allomentry$height,])
Result2
test <- as.numeric(Allomentry$height) #to make height  numeric only 
test

complete.cases(Allomentry)  # to get NA places by get False in it 

Allomentry[!complete.cases(Allomentry),]  # to get Rows in  missing data 

#filter Data
Allomentry 
#to get each speecies data 
filter1<-  Allomentry[Allomentry$species =='PSME',]             
filter1

# to convert data into numeric and get rid of comma in numbers 
Allomentry$height <- as.numeric(Allomentry$height)
Allomentry$height
Allomentry$height <- gsub(",",".",Allomentry$height)
Allomentry$height


#logical operator
is.na(Allomentry)    # get true result for Na value 
any(is.na.data.frame(Allomentry))   

# Function to data
Allomentry$height
NewAllomentry <- Allomentry[,]
NewAllomentry

calheight <- function(height)
{
  return(height>60)
}
# new names of col
colnames(Allomentry) <- (c(Species="Types",diameter="Length of diameter"))
colnames(Allomentry)   

#DEAL with missing data
missing_values <- sum(is.na(Allomentry))
missing_values
  
# remove Na value
Allomentry<- na.omit(Allomentry)
Allomentry

#median
meadian$height <- meadian(Allomentry$height)

# visulization the  data with histogram
Allomentry <- read.csv("Allomentry.csv")
draw_hist <- ggplot(Allomentry aes(height))
draw_hist
draw_hist + geom_histogram()
draw_hist + geom_histogram(binwidth = 6)
draw_hist + geom_histogram(color="black")
draw_hist + geom_histogram(fill="blue")
draw_hist + geom_histogram(alpha = 0.5)
draw_hist + geom_histogram() + ggtitle("Age of Passengers")
draw_hist + geom_histogram() + labs(x="Passenger age", y="Numbers")












