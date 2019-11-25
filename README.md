# Class3FinalProject
Final Project for Getting and Cleaning Data Class Due Nov 25, 2019


0. Add data to project
Dplyr library used.
Data downloaded from the link provided, unzipped and file path named ucihardataset.
Relevant files xtest, xtrain, ytest, ytrain, subjecttest, and subjecttrain.


1. Merge training and test sets
First xtrain and xtest were combined using rbind fnc and named using feature names from features.txt.
Then ytrain and ytest were combined using rbind fnc and named activity.
Then subjecttrain and subjecttest were combined using rbind fnc and named subject.
Then all were combined using cbind and named merged.


2. Extract the measurements on the mean and stdev for each measurement
First grep was used to search for mean and std in feature names and was named meanstdevfeaturenames.
Selected variables were read as characters with as.characters fnc.
Subset was named mergedstdevmean.

3. Activity names
Replaced values in the activity column using conditional statements and values provided in activity_labels.txt.

4. Label data set with descriptive variable names
Variable names were changed using the gsub fnc.
t -> time
Acc -> acceleration
-std() -> standarddeviation
-mean() -> mean
Gyro -> gyroscope
Mag -> magnitude
f -> frequency
BodyBody -> body


5. Create second dataset with average of each activity and subject
First mergedstdevmean dataset was aggregated using aggregate fnc.
Then stepfivedataset was written using write.table fnc.

