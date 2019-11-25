Code Book
First, the training and test sets were merged to create one data set (called merged).
Second, only the measurements on the mean and standard deviation for each measurement were extracted (called mergedstdevmean).
Third, activity names were changed using the activity_labels.txt file.
Fourth, the labels of the data set were changed using descriptive variable names.
Fifth, a second independent tidy data set was made containing the average of each variable for each activity and each subject (called stepfivedataset).  

The variables are summarized here: 
Subject- identifier for subject in study
Activity- activity performed by subject. Can be- walking, walking_upstairs, walking_downstairs, sitting, standing, laying
timeBodyaccelerationmdean-X/Y/Z- motion of subject’s body on axis
timeBodyaccelerationstandarddeviation-X/Y/Z- standard devation of acceleration of subject’s body on axis
timeGravityaccelerationmean-X/Y/Z- mean of gravitational acceleration of subject’s body on axis
timeGravityaccelerationstandarddeviation-X/Y/Z- standard deviation of the gravitational acceleration of subject’s body on axis
timeBodyaccelerationJerkmean-X/Y/Z- mean of jerk acceleration of subject’s body on axis
timeBodyaccelerationstandarddeviation-X/Y/Z- standard deviation of jerk acceleration of subject’s body on axis
timeBodygyroscopemean-X/Y/Z- mean of gyroscope of subject’s body on axis
timeBodygyroscopestandarddeviation-X/Y/Z- standard deviation of gyroscope of subject’s body on axis 
timeBodygyroscopeJerkmean-X/Y/Z- mean of the gyroscope jerk of subject’s body on axis
timeBodygyroscopeJerkstandarddeviation-X/Y/Z- standard deviation of the gyroscope jerk of subject’s body on axis
timeBodyaccelerationmagnitudemean- mean of the magnitude of acceleration of subject’s body 
timeBodyaccelerationmagnitudestandarddeviation- standard deviation of the magnitude of acceleration of subject’s body 
timeGravityaccelerationmagnitudemean- mean of the gravitational acceleration of subject’s body
timeGravityaccelerationmagnitudestandarddeviation- standard deviation of the gravitational acceleration of subject’s body
timeBodyaccelerationJerkmagnitudemean- mean of the magnitude of the jerk acceleration of subject’s body
timeBodyaccelerationJerkmagnitudestandarddeviation- standard deviation of the magnitude of the jerk acceleration of subject’s body
timeBodygyroscopemagnitudemean- mean of the magnitude of gyroscope of the subject’s body
timeBodygyroscopemagnitudestandarddeviation- standard deviation of the magnitude of gyroscope of the subject’s body
timeBodygyroscopemagnitudemean- mean of the magnitude of the  gyroscope jerk of subject’s body
timeBodygyroscopemagnitudestandarddeviation- standard deviation of the magnitude of the  gyroscope jerk of subject’s body
frequencyBodyaccelertionmean-X/Y/Z- mean of the frequency of acceleration of subject’s body on axis
frequencyBodyaccelerationstandarddeviation-X/Y/Z- standard deviation of the frequency of acceleration of subject’s body on axis
frequencyBodyaccelerationJerkmean-X/Y/Z- mean of the frequency of acceleration jerk of subject’s body on axis
