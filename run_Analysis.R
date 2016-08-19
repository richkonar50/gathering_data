##Clear Variables
rm(list = ls())

##Download
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, destfile = "./UCI HAR Dataset.zip", method = "curl")
unzip(zipfile = "./UCI HAR Dataset.zip"

##Read X & Y-Test Data
Xtest <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE)
ytest <- read.table("./UCI HAR Dataset/test/y_test.txt", header = FALSE)

##Read X & Y-Train Data
Xtrain <- read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE)
ytrain <- read.table("./UCI HAR Dataset/train/y_train.txt", header = FALSE)

##Read the Subject Test & Train Data
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", header = FALSE)
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", header = FALSE)

##Read the Features & Activity Data
features <- read.table("./UCI HAR Dataset/features.txt", header = FALSE)
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt", header = FALSE)

##Combing Test & Training Data
xall <- rbind(Xtest, Xtrain)
yall <- rbind(ytest, ytrain)
subject_all <- rbind(subject_test, subject_train)

##Getting the mean & std
colnames(xall) <- features[,2]
select <- c(grep("mean\\(", names(xall)), grep("std\\(", names(xall)))
select <- sort(select)
colSelection <- xall[select]

##Cleaning Up the Variable Names
colnames(colSelection) <- sub("\\(\\)", "", colnames(colSelection))

##Convert to Labels
activity <- activity_labels[unlist(yall),][2]

##Name the columns Activity & Subject
colnames(activity) <- "Activity"
colnames(subject_all) <- "Subject"


##Add Activity & Subject
data <- cbind(activity, colSelection)
data <- cbind(subject_all, data)


##Calcuate the Means
data2 <- aggregate(data[, c(-1, -2)], 
                  list(data$Subject, data$Activity), mean)
data2 <- data2[order(data2$Group.1),]

##Change Variable names with means
colnames(data2)[1:2] <- c("Subject", "Activity")
colnames(data2)[3:length(colnames(data2))] <- 
        paste0("mean.", colnames(data2)[3:length(colnames(data2))])




