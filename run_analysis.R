#add data to project
library(dplyr)
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile = "rawdata.zip")
unzip(zipfile = "rawdata.zip", exdir = "./rawdata")
ucihardataset <- file.path("./rawdata", "UCI HAR Dataset")
# y= activity
#x= features
xtest  <- read.table(file.path(ucihardataset, "test" , "X_test.txt" ),header = FALSE)
xtrain <- read.table(file.path(ucihardataset, "train", "X_train.txt"),header = FALSE)
ytest  <- read.table(file.path(ucihardataset, "test" , "Y_test.txt" ),header = FALSE)
ytrain <- read.table(file.path(ucihardataset, "train", "Y_train.txt"),header = FALSE)
subjecttrain <- read.table(file.path(ucihardataset, "train", "subject_train.txt"),header = FALSE)
subjecttest  <- read.table(file.path(ucihardataset, "test" , "subject_test.txt"),header = FALSE)

#merge training and test sets
# y= activity
#x= features
xbind <- rbind(xtrain, xtest)
featurenames <- read.table(file.path(ucihardataset, "features.txt"),head=FALSE)
names(xbind) <- featurenames$V2
ybind <- rbind(ytrain, ytest)
names(ybind) <- c("activity")
subjectbind <- rbind(subjecttrain, subjecttest)
names(subjectbind) <- c("subject")
xybind <- cbind(xbind, ybind)
merged <- cbind(xybind, subjectbind)




#extract the measurements on the mean and stdev for each measurement

meanstdevfeaturenames <-featurenames$V2[grep("mean\\(\\)|std\\(\\)", featurenames$V2)]
steptwo <-c(as.character(meanstdevfeaturenames), "subject", "activity" )
mergedstdevmean <-subset(merged,select= steptwo)


#label data set with descriptive variable names

#beginning
names(mergedstdevmean)
#t -> time
names(mergedstdevmean)<-gsub("^t", "time", names(mergedstdevmean))
# Acc > acceleration
names(mergedstdevmean)<-gsub("Acc", "acceleration", names(mergedstdevmean))
# -std() > standarddeviation
names(mergedstdevmean)<-gsub("-std()", "standarddeviation", names(mergedstdevmean), ignore.case = TRUE)
# -mean() > mean
names(mergedstdevmean)<-gsub("-mean()", "mean", names(mergedstdevmean), ignore.case = TRUE)
# Gyro > gyroscope
names(mergedstdevmean)<-gsub("Gyro", "gyroscope", names(mergedstdevmean))
#Mag > magnitude
names(mergedstdevmean)<-gsub("Mag", "magnitude", names(mergedstdevmean))
# f > frequency
names(mergedstdevmean)<-gsub("^f", "frequency", names(mergedstdevmean))
#BodyBody > body
names(mergedstdevmean)<-gsub("BodyBody", "body", names(mergedstdevmean))
#check
names(mergedstdevmean)



#create second dataset w average of each activity and subject

stepfivedataset <- aggregate(. ~subject + activity, mergedstdevmean, mean)
stepfivedataset <- stepfivedataset[order(stepfivedataset$subject, stepfivedataset$activity),]
write.table(stepfivedataset, file = "stepfivedataset.txt", row.names = FALSE)




