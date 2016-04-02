# Introduction

This code book describes the dataset contained in the file tidy_data.txt. 
This dataset is the result of the script "run_analysis.R" which has as source dataset the following:
* https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

# Keys

The script collect all the data contained in the source dataset and merge them together. 
The result dataset rows are identified by the following keys:

* subjectid
	+ it is the identifier of the test volunteer (30 volunteers)
* activity
	+ for any row, it is the activity state of the volunteer when the row measurements were retrieved
		+ walking
		+ walking upstairs
		+ walking downstairs
		+ sitting
		+ standing
		+ laying


	
# Average of the measurements


In this section of the codebook we list the dataset variables name. 
The variables contain the average of meand or standard deviation variable contained in the source dataset for each activity and each subject.
The features of the datasource come from the accelerometer and gyroscope 3-axial raw signals.
These time domain signals were captured at a constant rate of 50 Hz. 
Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 
Similarly, the acceleration signal was then separated into body and gravity acceleration signals 
using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals.
Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm.
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing.

These signals were used to estimate variables (mean and standard deviation) of the feature vector for each pattern:


## Time Domain Variables

* TimeDomainBodyAccelerometerMeanX
* TimeDomainBodyAccelerometerMeanY
* TimeDomainBodyAccelerometerMeanZ
* TimeDomainBodyAccelerometerStandardX
* TimeDomainBodyAccelerometerStandardY
* TimeDomainBodyAccelerometerStandardZ
* TimeDomainGravityAccelerometerMeanX
* TimeDomainGravityAccelerometerMeanY
* TimeDomainGravityAccelerometerMeanZ
* TimeDomainGravityAccelerometerStandardX
* TimeDomainGravityAccelerometerStandardY
* TimeDomainGravityAccelerometerStandardZ
* TimeDomainBodyAccelerometerJerksignalsMeanX
* TimeDomainBodyAccelerometerJerksignalsMeanY
* TimeDomainBodyAccelerometerJerksignalsMeanZ
* TimeDomainBodyAccelerometerJerksignalsStandardX
* TimeDomainBodyAccelerometerJerksignalsStandardY
* TimeDomainBodyAccelerometerJerksignalsStandardZ
* TimeDomainBodyGyroscopeMeanX
* TimeDomainBodyGyroscopeMeanY
* TimeDomainBodyGyroscopeMeanZ
* TimeDomainBodyGyroscopeStandardX
* TimeDomainBodyGyroscopeStandardY
* TimeDomainBodyGyroscopeStandardZ
* TimeDomainBodyGyroscopeJerksignalsMeanX
* TimeDomainBodyGyroscopeJerksignalsMeanY
* TimeDomainBodyGyroscopeJerksignalsMeanZ
* TimeDomainBodyGyroscopeJerksignalsStandardX
* TimeDomainBodyGyroscopeJerksignalsStandardY
* TimeDomainBodyGyroscopeJerksignalsStandardZ
* TimeDomainBodyAccelerometerMagnitudeMean
* TimeDomainBodyAccelerometerMagnitudeStandard
* TimeDomainGravityAccelerometerMagnitudeMean
* TimeDomainGravityAccelerometerMagnitudeStandard
* TimeDomainBodyAccelerometerJerksignalsMagnitudeMean
* TimeDomainBodyAccelerometerJerksignalsMagnitudeStandard
* TimeDomainBodyGyroscopeMagnitudeMean
* TimeDomainBodyGyroscopeMagnitudeStandard
* TimeDomainBodyGyroscopeJerksignalsMagnitudeMean
* TimeDomainBodyGyroscopeJerksignalsMagnitudeStandard
	
## Frequency Domain Variables

* FrequencyDomainBodyAccelerometerMeanX
* FrequencyDomainBodyAccelerometerMeanY
* FrequencyDomainBodyAccelerometerMeanZ
* FrequencyDomainBodyAccelerometerStandardX
* FrequencyDomainBodyAccelerometerStandardY
* FrequencyDomainBodyAccelerometerStandardZ
* FrequencyDomainBodyAccelerometerMeanFrequencyX
* FrequencyDomainBodyAccelerometerMeanFrequencyY
* FrequencyDomainBodyAccelerometerMeanFrequencyZ
* FrequencyDomainBodyAccelerometerJerksignalsMeanX
* FrequencyDomainBodyAccelerometerJerksignalsMeanY
* FrequencyDomainBodyAccelerometerJerksignalsMeanZ
* FrequencyDomainBodyAccelerometerJerksignalsStandardX
* FrequencyDomainBodyAccelerometerJerksignalsStandardY
* FrequencyDomainBodyAccelerometerJerksignalsStandardZ
* FrequencyDomainBodyAccelerometerJerksignalsMeanFrequencyX
* FrequencyDomainBodyAccelerometerJerksignalsMeanFrequencyY
* FrequencyDomainBodyAccelerometerJerksignalsMeanFrequencyZ
* FrequencyDomainBodyGyroscopeMeanX
* FrequencyDomainBodyGyroscopeMeanY
* FrequencyDomainBodyGyroscopeMeanZ
* FrequencyDomainBodyGyroscopeStandardX
* FrequencyDomainBodyGyroscopeStandardY
* FrequencyDomainBodyGyroscopeStandardZ
* FrequencyDomainBodyGyroscopeMeanFrequencyX
* FrequencyDomainBodyGyroscopeMeanFrequencyY
* FrequencyDomainBodyGyroscopeMeanFrequencyZ
* FrequencyDomainBodyAccelerometerMagnitudeMean
* FrequencyDomainBodyAccelerometerMagnitudeStandard
* FrequencyDomainBodyAccelerometerMagnitudeMeanFrequency
* FrequencyDomainBodyAccelerometerJerksignalsMagnitudeMean
* FrequencyDomainBodyAccelerometerJerksignalsMagnitudeStandard
* FrequencyDomainBodyAccelerometerJerksignalsMagnitudeMeanFrequency
* FrequencyDomainBodyGyroscopeMagnitudeMean
* FrequencyDomainBodyGyroscopeMagnitudeStandard
* FrequencyDomainBodyGyroscopeMagnitudeMeanFrequency
* FrequencyDomainBodyGyroscopeJerksignalsMagnitudeMean
* FrequencyDomainBodyGyroscopeJerksignalsMagnitudeStandard
* FrequencyDomainBodyGyroscopeJerksignalsMagnitudeMeanFrequency
