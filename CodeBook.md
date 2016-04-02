# Introduction

This code book describes the dataset contained in the file tidy_data.txt. 
This dataset is the result of the script "run_analysis.R" which has as source dataset the following:
* https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

# Keys

The script collect all the data contained in the source dataset and merge them together. 
The result dataset rows are identified by the following keys:

* subjectid
	+ it is the test volunteer identifier (30 volunteers)
* activity
	+ for any row, it is the activity state of the volunteer when the row measurements were retrieved

	
# Average of the measurements


In this section of the codebook we list the dataset variables name. 
The variables contain the average of each variable contained in the source dataset for each activity and each subject.

## Time Domain Variables

* mean of the accelerometer features
	+ TimeDomainBodyAccelerometerMeanX
	+ TimeDomainBodyAccelerometerMeanY
	+ TimeDomainBodyAccelerometerMeanZ
	+ TimeDomainBodyAccelerometerStandardX
	+ TimeDomainBodyAccelerometerStandardY
	+ TimeDomainBodyAccelerometerStandardZ
	+ TimeDomainGravityAccelerometerMeanX
	+ TimeDomainGravityAccelerometerMeanY
	+ TimeDomainGravityAccelerometerMeanZ
	+ TimeDomainGravityAccelerometerStandardX
	+ TimeDomainGravityAccelerometerStandardY
	+ TimeDomainGravityAccelerometerStandardZ
	+ TimeDomainBodyAccelerometerJerksignalsMeanX
	+ TimeDomainBodyAccelerometerJerksignalsMeanY
	+ TimeDomainBodyAccelerometerJerksignalsMeanZ
	+ TimeDomainBodyAccelerometerJerksignalsStandardX
	+ TimeDomainBodyAccelerometerJerksignalsStandardY
	+ TimeDomainBodyAccelerometerJerksignalsStandardZ
	+ TimeDomainBodyGyroscopeMeanX
	+ TimeDomainBodyGyroscopeMeanY
	+ TimeDomainBodyGyroscopeMeanZ
	+ TimeDomainBodyGyroscopeStandardX
	+ TimeDomainBodyGyroscopeStandardY
	+ TimeDomainBodyGyroscopeStandardZ
	+ TimeDomainBodyGyroscopeJerksignalsMeanX
	+ TimeDomainBodyGyroscopeJerksignalsMeanY
	+ TimeDomainBodyGyroscopeJerksignalsMeanZ
	+ TimeDomainBodyGyroscopeJerksignalsStandardX
	+ TimeDomainBodyGyroscopeJerksignalsStandardY
	+ TimeDomainBodyGyroscopeJerksignalsStandardZ
	+ TimeDomainBodyAccelerometerMagnitudeMean
	+ TimeDomainBodyAccelerometerMagnitudeStandard
	+ TimeDomainGravityAccelerometerMagnitudeMean
	+ TimeDomainGravityAccelerometerMagnitudeStandard
	+ TimeDomainBodyAccelerometerJerksignalsMagnitudeMean
	+ TimeDomainBodyAccelerometerJerksignalsMagnitudeStandard
	+ TimeDomainBodyGyroscopeMagnitudeMean
	+ TimeDomainBodyGyroscopeMagnitudeStandard
	+ TimeDomainBodyGyroscopeJerksignalsMagnitudeMean
	+ TimeDomainBodyGyroscopeJerksignalsMagnitudeStandard
	
## Frequency Domain Variables

* mean of the accelerometer features
	+ FrequencyDomainBodyAccelerometerMeanX
	+ FrequencyDomainBodyAccelerometerMeanY
	+ FrequencyDomainBodyAccelerometerMeanZ
	+ FrequencyDomainBodyAccelerometerStandardX
	+ FrequencyDomainBodyAccelerometerStandardY
	+ FrequencyDomainBodyAccelerometerStandardZ
	+ FrequencyDomainBodyAccelerometerMeanFrequencyX
	+ FrequencyDomainBodyAccelerometerMeanFrequencyY
	+ FrequencyDomainBodyAccelerometerMeanFrequencyZ
	+ FrequencyDomainBodyAccelerometerJerksignalsMeanX
	+ FrequencyDomainBodyAccelerometerJerksignalsMeanY
	+ FrequencyDomainBodyAccelerometerJerksignalsMeanZ
	+ FrequencyDomainBodyAccelerometerJerksignalsStandardX
	+ FrequencyDomainBodyAccelerometerJerksignalsStandardY
	+ FrequencyDomainBodyAccelerometerJerksignalsStandardZ
	+ FrequencyDomainBodyAccelerometerJerksignalsMeanFrequencyX
	+ FrequencyDomainBodyAccelerometerJerksignalsMeanFrequencyY
	+ FrequencyDomainBodyAccelerometerJerksignalsMeanFrequencyZ
	+ FrequencyDomainBodyGyroscopeMeanX
	+ FrequencyDomainBodyGyroscopeMeanY
	+ FrequencyDomainBodyGyroscopeMeanZ
	+ FrequencyDomainBodyGyroscopeStandardX
	+ FrequencyDomainBodyGyroscopeStandardY
	+ FrequencyDomainBodyGyroscopeStandardZ
	+ FrequencyDomainBodyGyroscopeMeanFrequencyX
	+ FrequencyDomainBodyGyroscopeMeanFrequencyY
	+ FrequencyDomainBodyGyroscopeMeanFrequencyZ
	+ FrequencyDomainBodyAccelerometerMagnitudeMean
	+ FrequencyDomainBodyAccelerometerMagnitudeStandard
	+ FrequencyDomainBodyAccelerometerMagnitudeMeanFrequency
	+ FrequencyDomainBodyAccelerometerJerksignalsMagnitudeMean
	+ FrequencyDomainBodyAccelerometerJerksignalsMagnitudeStandard
	+ FrequencyDomainBodyAccelerometerJerksignalsMagnitudeMeanFrequency
	+ FrequencyDomainBodyGyroscopeMagnitudeMean
	+ FrequencyDomainBodyGyroscopeMagnitudeStandard
	+ FrequencyDomainBodyGyroscopeMagnitudeMeanFrequency
	+ FrequencyDomainBodyGyroscopeJerksignalsMagnitudeMean
	+ FrequencyDomainBodyGyroscopeJerksignalsMagnitudeStandard
	+ FrequencyDomainBodyGyroscopeJerksignalsMagnitudeMeanFrequency
