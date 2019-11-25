# Class3FinalProject
Final Project for Getting and Cleaning Data Class Due Nov 25, 2019


0 add data to project
dplyr library used
Data downloaded from the link provided, unzipped and file path named ucihardataset
relevant files xtest, xtrain, ytest, ytrain, subjecttest, and subject train


1 merge training and test sets
first xtrain and xtest were combined using rbind fnc and named using feature names from features.txt
ytrain and ytest were combined using rbind fnc and named activity
subjecttrain and subjecttest were combined using rbind fnc and named subject
then all were combined using cbind and named merged


2 extract the measurements on the mean and stdev for each measurement
grep was used to search for mean and std in feature names and was named meanstdevfeaturenames
selected variables were read as characters with as.characters fnc
subset was named mergedstdevmean

3 activity names
replaced values in the activity column using conditional statements and values provided in activity_labels.txt

4 label data set with descriptive variable names
variable names were changed using the gsub fnc
t -> time
Acc -> acceleration
-std() -> standarddeviation
-mean() -> mean
Gyro -> gyroscope
Mag -> magnitude
f -> frequency
BodyBody -> body


5 create second dataset w average of each activity and subject
mergedstdevmean dataset was aggregated using aggregate fnc
stepfivedataset was written using write.table fnc

