####Code book of the tidy data set 

The variables used for the script:

1. Xtest - test measurement data  
2. ytest - test activity data  
3. subject_test - test subject data  
4. Xtrain - training measurement data  
5. ytrain - training activity data  
6. subject_train - training subject data  
7. xall - combined test and training measurement data  
8. yall - combined test and training activity data  
9. subject_all - combined test and training subject data  
10. features - the list of features provided with the dataset 
11. activity_labels - the list of the activity labels
11. select- columns with mean or standard deviation from amongst the features  
12. colSelection - alldata filtered only for the mean and std deviation columns  
13. activity - activity names provided with the dataset  
14. colnames(activity) & colnames(subject_all) - all the column names for the various measurements from features  
15. data2 - aggregate data to get the averages needed as output  


**Subject** is a numeric factor.  **Activity** is a factor of six different 
activities.  There are 88 mean and standard deviation measurements.  Each measurement has been averaged per Activity per subject. 

More info on the particulars of this data set can be found [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

####Activity Label Factors:
* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING

####Measurement Variable Means:
* tBodyAcc.mean...X
* tBodyAcc.mean...Y
* tBodyAcc.mean...Z
* tBodyAcc.std...X
* tBodyAcc.std...Y
* tBodyAcc.std...Z
* tGravityAcc.mean...X
* tGravityAcc.mean...Y
* tGravityAcc.mean...Z
* tGravityAcc.std...X
* tGravityAcc.std...Y
* tGravityAcc.std...Z
* tBodyAccJerk.mean...X
* tBodyAccJerk.mean...Y
* tBodyAccJerk.mean...Z
* tBodyAccJerk.std...X
* tBodyAccJerk.std...Y
* tBodyAccJerk.std...Z
* tBodyGyro.mean...X
* tBodyGyro.mean...Y
* tBodyGyro.mean...Z
* tBodyGyro.std...X
* tBodyGyro.std...Y
* tBodyGyro.std...Z
* tBodyGyroJerk.mean...X
* tBodyGyroJerk.mean...Y
* tBodyGyroJerk.mean...Z
* tBodyGyroJerk.std...X
* tBodyGyroJerk.std...Y
* tBodyGyroJerk.std...Z
* tBodyAccMag.mean..
* tBodyAccMag.std..
* tGravityAccMag.mean..
* tGravityAccMag.std..
* tBodyAccJerkMag.mean..
* tBodyAccJerkMag.std..
* tBodyGyroMag.mean..
* tBodyGyroMag.std..
* tBodyGyroJerkMag.mean..
* tBodyGyroJerkMag.std..
* fBodyAcc.mean...X
* fBodyAcc.mean...Y
* fBodyAcc.mean...Z
* fBodyAcc.std...X
* fBodyAcc.std...Y
* fBodyAcc.std...Z
* fBodyAcc.meanFreq...X
* fBodyAcc.meanFreq...Y
* fBodyAcc.meanFreq...Z
* fBodyAccJerk.mean...X
* fBodyAccJerk.mean...Y
* fBodyAccJerk.mean...Z
* fBodyAccJerk.std...X
* fBodyAccJerk.std...Y
* fBodyAccJerk.std...Z
* fBodyAccJerk.meanFreq...X
* fBodyAccJerk.meanFreq...Y
* fBodyAccJerk.meanFreq...Z
* fBodyGyro.mean...X
* fBodyGyro.mean...Y
* fBodyGyro.mean...Z
* fBodyGyro.std...X
* fBodyGyro.std...Y
* fBodyGyro.std...Z
* fBodyGyro.meanFreq...X
* fBodyGyro.meanFreq...Y
* fBodyGyro.meanFreq...Z
* fBodyAccMag.mean..
* fBodyAccMag.std..
* fBodyAccMag.meanFreq..
* fBodyBodyAccJerkMag.mean..
* fBodyBodyAccJerkMag.std..
* fBodyBodyAccJerkMag.meanFreq..
* fBodyBodyGyroMag.mean..
* fBodyBodyGyroMag.std..
* fBodyBodyGyroMag.meanFreq..
* fBodyBodyGyroJerkMag.mean..
* fBodyBodyGyroJerkMag.std..
* fBodyBodyGyroJerkMag.meanFreq..
* angle.tBodyAccMean.gravity.
* angle.tBodyAccJerkMean..gravityMean.
* angle.tBodyGyroMean.gravityMean.
* angle.tBodyGyroJerkMean.gravityMean.
* angle.X.gravityMean.
* angle.Y.gravityMean.
* angle.Z.gravityMean.

