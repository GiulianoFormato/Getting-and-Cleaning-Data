# Introduction

This code book describes the dataset contained in the file tidy_data.txt. 
This dataset is the result of the script "run_analysis.R" which has as source dataset the following:
* https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

# Keys

The script collects all the data contained in the source dataset and merge them together. 
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

In R these variable are factors.
	
# Average of the measurements


In this section of the codebook we list the dataset variables name. 
The variables contain the average of mean or standard deviation variable contained in the source dataset for each keys couple.

## Source Dataset

The datasource was produced during some experiments that have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
wearing a smartphone (Samsung Galaxy S II) on the waist. 
Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 
The experiments have been video-recorded to label the data manually. 
The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

So, the features of the datasource come from the accelerometer and gyroscope 3-axial raw signals.
These time domain signals were captured at a constant rate of 50 Hz. 
Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 
Similarly, the acceleration signal was then separated into body and gravity acceleration signals 
using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals.
Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm.
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing.

These signals were used to estimate variables (mean and standard deviation) of the feature vector for each pattern.


## Time Domain Variables

All variables are numeric.

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

All variables are numeric.

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
