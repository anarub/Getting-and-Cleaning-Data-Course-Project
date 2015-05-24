require(plyr)

##Set up the directories for the files used
##data.location is the root. Other labels as per file name.
data.location<-(
        "Y:/DataScience/Datacleaning/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/")
activity_labels.txt <- paste(data.location,"activity_labels.txt", sep = "")
features.txt <- paste(data.location,"features.txt", sep = "")
subject_test.txt <- paste(data.location,"test/subject_test.txt", sep = "")
x_test.txt <- paste(data.location,"test/x_test.txt", sep = "")
y_test.txt <- paste(data.location,"test/y_test.txt", sep = "")
subject_train.txt <- paste(data.location,"train/subject_train.txt", sep = "")
x_train.txt <- paste(data.location,"train/x_train.txt", sep = "")
y_train.txt <- paste(data.location,"train/y_train.txt", sep = "")


##Load data
activity_labels <- read.table(activity_labels.txt, col.names = c("ActivityId", 
        "Activity"))
features <- read.table(features.txt, colClasses = c("character"))
subject_test <- read.table(subject_test.txt)
x_test <- read.table(x_test.txt)
y_test <- read.table(y_test.txt)
subject_train <- read.table(subject_train.txt)
x_train <- read.table(x_train.txt)
y_train <- read.table(y_train.txt)

#Tidy up the environment

rm(activity_labels.txt)
rm(data.location)
rm(features.txt)
rm(subject_test.txt)
rm(x_test.txt)
rm(x_train.txt)
rm(subject_train.txt)
rm(y_test.txt)
rm(y_train.txt)


##Q1 Merges the training and the test sets to create one data set.

##Adding test activity to data
data.test<-cbind(y_test,x_test)
##Adding test subject to data.test
data.test<-cbind(subject_test,data.test)

##Adding test activity to data
data.train<-cbind(y_train,x_train)
##Adding test subject to data.test
data.train<-cbind(subject_train,data.train)

##combine data sets
data.complete<-rbind(data.test,data.train)

##create headers
header<-c("subject","activity",features[,2])

##Add headers
names(data.complete)<-header


##Checking data.complete
head(data.complete[,1:3])
tail(data.complete[,1:3])
summary(data.complete[,1:3])

##Encountered need to remove now unnecessary files
rm(features)
rm(header)
rm(x_test)
rm(y_test)
rm(subject_test)
rm(x_train)
rm(y_train)
rm(subject_train)
rm(data.test)
rm(data.train)

##Q2 Extracts only the measurements on the mean and standard deviation
##for each measurement.

##gets column numbers of mean and std
column.mean <- grep("mean()",colnames(data.complete))
column.std <- grep("std()",colnames(data.complete))
column.combine<-c(column.mean,column.std)
##remove meanFreq columns from vector
remove<- grep("Freq()",colnames(data.complete))
column.combine<-column.combine[!column.combine %in% remove]

##reorder vector so that mean and std of each descriptor remains togeather.
column.combine<-sort(column.combine)

##Create summary data frame
data.summary<-data.complete[,c(1,2,column.combine)]

##Check data summary
names(data.summary)

## Tidy up
rm(column.combine)
rm(column.mean)
rm(column.std)
rm(remove)

##Q3 Uses descriptive activity names to name the activities in the data set
data.summary<-merge(activity_labels,data.summary, by.x="ActivityId", by.y="activity")
##Checking data.complete
head(data.summary[,1:3])
tail(data.summary[,1:3])
##Remove ActivityId and reorder using subject
remove<-c("ActivityId")
data.summary<-data.summary[,!(names(data.summary) %in% remove)]
attach(data.summary)
data.summary<-data.summary[order(subject),]
detach(data.summary)
head(data.summary[,1:3])
tail(data.summary[,1:3])
##Tidy environment
rm(remove)
rm(activity_labels)


##Q4 Appropriately labels the data set with descriptive variable names.
names(data.summary)

names(data.summary) <- gsub("()","",names(data.summary))##tried to remove brackets but doesn't work
names(data.summary) <- gsub("tBody","Time.Domain.",names(data.summary))
names(data.summary) <- gsub("fBody","Frequency.Domain.",names(data.summary))
names(data.summary) <- gsub("Acc","Linear.Acceleration.",names(data.summary))
names(data.summary) <- gsub("GyroJerk","Angular.Acceleration.",names(data.summary))
names(data.summary) <- gsub("Gyro","Angular.Velocity.",names(data.summary))
names(data.summary) <- gsub("-X","-X.Axis",names(data.summary))
names(data.summary) <- gsub("-Y","-Y.Axis",names(data.summary))
names(data.summary) <- gsub("-Z","-Z.Axis",names(data.summary))
names(data.summary) <- gsub("Mag","Magnitude.",names(data.summary))
names(data.summary) <- gsub("Jerk","Jerk.",names(data.summary))
names(data.summary) <- gsub("tGravity","Time.Gravity.",names(data.summary))
names(data.summary) <- gsub("-mean","Mean.",names(data.summary))
names(data.summary) <- gsub("-std","Standard.Deviation.",names(data.summary))

##Q5 From the data set in step 4, creates a second, independent tidy data set
##with the average of each variable for each activity and each subject.

data.tidy <- ddply(data.summary, c("Activity","subject"), numcolwise(mean))

##create the tidy data file with variables seperated by a comma
write.table(data.tidy, "tidy_data.txt", sep = ",",row.name=FALSE)

