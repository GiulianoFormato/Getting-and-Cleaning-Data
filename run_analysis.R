# setting env
rm(list = ls())
library(reshape2)

filename <- "uci_har_dataset.zip"

# Download and unzip the dataset if it has not been done yet:

if (!file.exists(filename)){
    fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    download.file(fileURL, filename)
}  
if (!file.exists("UCI HAR Dataset")) { 
    unzip(filename) 
}

## getting metadata info

# features (char)
features <- read.table("UCI HAR Dataset/features.txt",header = F)
features <- as.character(features [,2])
# feature that we want to put in our tidy dataset
mean.std.features.index <- grep(".*mean.*|.*std.*", features)
mean.std.features.names <- grep(".*mean.*|.*std.*", features,value = T)
# activities (char)
activities <- read.table("UCI HAR Dataset/activity_labels.txt", header = F)
activities <- as.character(activities [,2])


## makinng features names clean and descriptive

mean.std.features.names <- gsub("-mean[\\(\\)]*", "Mean", mean.std.features.names)
mean.std.features.names <- gsub("-std[\\(\\)]*", "Standard", mean.std.features.names)
mean.std.features.names <- gsub("^t", "TimeDomain", mean.std.features.names)
mean.std.features.names <- gsub("^f", "FrequencyDomain", mean.std.features.names)
mean.std.features.names <- gsub("Jerk", "Jerksignals", mean.std.features.names)
mean.std.features.names <- gsub("Acc", "Accelerometer", mean.std.features.names)
mean.std.features.names <- gsub("Gyro", "Gyroscope", mean.std.features.names)
mean.std.features.names <- gsub("Mag", "Magnitude", mean.std.features.names)
mean.std.features.names <- gsub("Freq\\(\\)", "Frequency", mean.std.features.names)
mean.std.features.names <- gsub("-()", "", mean.std.features.names)
mean.std.features.names <- gsub("BodyBody", "Body", mean.std.features.names)

## readind test data

# subject
test.subject <- as.numeric(read.table("UCI HAR Dataset/test/subject_test.txt", header = F)[,1])
# activities
test.activities <- as.numeric(read.table("UCI HAR Dataset/test/y_test.txt", header = F)[,1])
test.activities <- activities[test.activities]
# features data
test.data <- read.table("UCI HAR Dataset/test/X_test.txt", header = F)[mean.std.features.index]
# giving the descriptive names to the dataset
names(test.data) <- mean.std.features.names
# adding the activity column to the dataset
test.data <- cbind(activity=tolower(test.activities), test.data)
# adding the subject id to the dataset
test.data <- cbind(subjectid=test.subject, test.data)

test.data.melted <- melt(test.data, id = c("subjectid", "activity"))
test.data.mean <- dcast(test.data.melted, subjectid + activity ~ variable, mean)

#head(test.data.mean)
if (file.exists("tidy_data.txt"))
write.table(test.data.mean, "tidy_data.txt", row.names = FALSE, quote = FALSE)

#write.table(mean.std.features.names, "tidy_data_names.txt", row.names = FALSE, quote = FALSE, col.names = F)
