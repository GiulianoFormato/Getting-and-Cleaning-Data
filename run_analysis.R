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


# subject as factor
test.subject <- as.factor(read.table("UCI HAR Dataset/test/subject_test.txt", header = F)[,1])

# activities as factor
test.activities <- as.numeric(read.table("UCI HAR Dataset/test/y_test.txt", header = F)[,1])
test.activities <- as.factor(activities[test.activities])

# features data
test.data <- read.table("UCI HAR Dataset/test/X_test.txt", header = F)[mean.std.features.index]

# giving the descriptive names to the dataset
names(test.data) <- mean.std.features.names

# adding the activity column to the dataset
test.data <- cbind(activity=tolower(test.activities), test.data)

# adding the subject id to the dataset
test.data <- cbind(subjectid=test.subject, test.data)


## readind train data


# subject as factor
training.subject <- as.factor(read.table("UCI HAR Dataset/train/subject_train.txt", header = F)[,1])

# activities as factor
training.activities <- as.numeric(read.table("UCI HAR Dataset/train/y_train.txt", header = F)[,1])
training.activities <- as.factor(activities[training.activities])

# features data
training.data <- read.table("UCI HAR Dataset/train/X_train.txt", header = F)[mean.std.features.index]

# giving the descriptive names to the dataset
names(training.data) <- mean.std.features.names

# adding the activity column to the dataset
training.data <- cbind(activity=tolower(training.activities), training.data)

# adding the subject id to the dataset
training.data <- cbind(subjectid=training.subject, training.data)

all.data <- rbind(test.data, training.data)
all.data.melted <- melt(all.data, id = c("subjectid", "activity"))
all.data.mean <- dcast(all.data.melted, subjectid + activity ~ variable, mean)

# writing output in a file
if (file.exists("tidy_data.txt"))
    file.remove("tidy_data.txt")
write.table(all.data.mean, "tidy_data.txt", row.names = FALSE)
