#--------------------------------------------------------------------------
'
Johns Hopkins Bloomberg School of Public Health

Data Science Specialization

Course: Getting and Cleaning Data

Assignment: Course Project

Author: Ernani Bretas
Date: 22-FEBRUARY-2015
'
#--------------------------------------------------------------------------

# Package has melt() and dcast().
library(reshape2)


#--------------------------------------------------------------------------
#
#        Merges the training and the test sets to create one data set.



#---> Read the input files.

# Read the training set.
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")

# Read the training labels.
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")

# Read the subject_train. Relates the subject with the observation. Its range is from 1 to 30.  
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")

# Read the test set.
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")

# Read the test labels.
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")

# Read the subject_test. Relates the subject with the observation. Its range is from 1 to 30.  
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

# Read the features names. These are the names of the variables in the training and test sets.
features <- read.table("./UCI HAR Dataset/features.txt")

# Read the activity lables
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")


#---> Add the activity variable to the train and test sets.

X_train$activity <- y_train$V1
X_test$activity  <- y_test$V1


#---> Add the subject variable to the train and test sets.

X_train$subject <- subject_train$V1
X_test$subject  <- subject_test$V1


#---> Merges the training and the test sets to create the measurement data set.

X_single <- rbind(X_train, X_test)



#--------------------------------------------------------------------------
#
#        Appropriately labels the data set with descriptive variable names. 



var_names <- as.vector(features[,"V2"])
var_names <- c(var_names, "activity", "subject")
names(X_single) <- var_names



#--------------------------------------------------------------------------
#
#        Extracts only the measurements on the mean and standard deviation for each measurement. 



target_vars <- grep("mean\\(\\)|std\\(\\)|activity|subject", var_names)
X_single <- X_single[,var_names[target_vars]]



#--------------------------------------------------------------------------
#
#        Uses descriptive activity names to name the activities in the data set 



#---> Add the activity labels to the joint measurement set.

X_single$activity <- factor(as.vector(X_single[,"activity"]), labels=as.vector(activity_labels[,"V2"]))



#--------------------------------------------------------------------------
#
#        Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 



X_single_melt <- melt(X_single, id=c("activity", "subject"))
tidy_data <- dcast(X_single_melt, activity + subject ~ variable, mean)



#--------------------------------------------------------------------------
#
#        Write the tidy data set output file.



write.table(tidy_data, file="tidy_data.txt", row.name=FALSE)



