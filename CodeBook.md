#Code Book
##Johns Hopkins Bloomberg School of Public Health
##Data Science Specialization
##Course: Getting and Cleaning Data
##Assignment: Course Project


##Variables


#####Identifier variables:

activity  

&nbsp;&nbsp;&nbsp;Type of activity performed on each observation  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1. WALKING  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2. WALKING_UPSTAIRS  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3. WALKING_DOWNSTAIRS  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4. SITTING  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5. STANDING  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;6. LAYING  

subject  

&nbsp;&nbsp;&nbsp;Person who were volunteers to the experiment and performed one activity on each observation.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1..30 .Unique identifiers assigned to the volunteers.  
			
#####Measurement variables:

&nbsp;&nbsp;&nbsp;Measurements (features) from Samsung Galaxy S II embedded   accelerometer and gyroscope.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The values are normalized and bounded within [-1,1].  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Each variable represents the mean value of the original measurements.  

tBodyAcc-mean()-X          
tBodyAcc-mean()-Y          
tBodyAcc-mean()-Z          
tBodyAcc-std()-X           
tBodyAcc-std()-Y           
tBodyAcc-std()-Z           
tGravityAcc-mean()-X       
tGravityAcc-mean()-Y       
tGravityAcc-mean()-Z       
tGravityAcc-std()-X        
tGravityAcc-std()-Y        
tGravityAcc-std()-Z        
tBodyAccJerk-mean()-X      
tBodyAccJerk-mean()-Y      
tBodyAccJerk-mean()-Z   
tBodyAccJerk-std()-X       
tBodyAccJerk-std()-Y       
tBodyAccJerk-std()-Z       
tBodyGyro-mean()-X         
tBodyGyro-mean()-Y         
tBodyGyro-mean()-Z         
tBodyGyro-std()-X          
tBodyGyro-std()-Y          
tBodyGyro-std()-Z          
tBodyGyroJerk-mean()-X     
tBodyGyroJerk-mean()-Y     
tBodyGyroJerk-mean()-Z     
tBodyGyroJerk-std()-X      
tBodyGyroJerk-std()-Y      
tBodyGyroJerk-std()-Z      
tBodyAccMag-mean()         
tBodyAccMag-std()          
tGravityAccMag-mean()      
tGravityAccMag-std()       
tBodyAccJerkMag-mean()     
tBodyAccJerkMag-std()      
tBodyGyroMag-mean()        
tBodyGyroMag-std()         
tBodyGyroJerkMag-mean()    
tBodyGyroJerkMag-std()     
fBodyAcc-mean()-X          
fBodyAcc-mean()-Y          
fBodyAcc-mean()-Z          
fBodyAcc-std()-X           
fBodyAcc-std()-Y           
fBodyAcc-std()-Z           
fBodyAccJerk-mean()-X      
fBodyAccJerk-mean()-Y      
fBodyAccJerk-mean()-Z      
fBodyAccJerk-std()-X       
fBodyAccJerk-std()-Y       
fBodyAccJerk-std()-Z       
fBodyGyro-mean()-X         
fBodyGyro-mean()-Y         
fBodyGyro-mean()-Z         
fBodyGyro-std()-X          
fBodyGyro-std()-Y          
fBodyGyro-std()-Z          
fBodyAccMag-mean()         
fBodyAccMag-std()          
fBodyBodyAccJerkMag-mean() 
fBodyBodyAccJerkMag-std()  
fBodyBodyGyroMag-mean()    
fBodyBodyGyroMag-std()     
fBodyBodyGyroJerkMag-mean()
fBodyBodyGyroJerkMag-std() 


##The Data Set

The data set "Human Activity Recognition Using Smartphones Data Set" was generated at the University of California, Irvine.
Link to the data set: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Data Set Information:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

##Work

The goal was to prepare a tidy data set that can be used for later analysis, containing the average of each selected variable for each activity and each subject.

The training and test data was separated each one in three different files.
Each file contained measurements, activities and subjects (the volunteers).

First, measurements, activities and subjects variables were bound together for training and test data, generating two data frames.

After that, these two data frames had it's observations bound in one single intermediate data frame.

The descriptive informations about features (measurements) and activities was loaded and added to the single intermediate data frame.

The final data frame was created reshaping the intermediate data frame.
Each row (observation) represents an aggregation (using the mean) of all occurrences of one type of activity performed by one specific subject. The final data frame was saved in the file **"tidy_data.txt"**.

