#Raw Data Collection
A full data discription is avalible below:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
Data was downloaded from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

#About the data
##Taken from data readme
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years.
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.
Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.
The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window).
The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity.
The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample.
Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'.
Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample.
The units are radians/second. 
##Data Units

These have been normalised from -1 to 1 and so units are not appropriate.


##Data Transformation

The data was assembled into one data frame.
It was then simplified by removing values that were not associated with the mean of standard deviation.
The column titles were replaced with more discriptive words.
The dataframe was further simplified by providing an average of activity and subject.

###Column Names
Activity                                                                    
subject                                                                     
Time.Domain.Linear.Acceleration.Mean.()-X.Axis                               
Time.Domain.Linear.Acceleration.Mean.()-Y.Axis                             
Time.Domain.Linear.Acceleration.Mean.()-Z.Axis                              
Time.Domain.Linear.Acceleration.Standard.Deviation.()-X.Axis               
Time.Domain.Linear.Acceleration.Standard.Deviation.()-Y.Axis                 
Time.Domain.Linear.Acceleration.Standard.Deviation.()-Z.Axis                 
Time.Gravity.Linear.Acceleration.Mean.()-X.Axis                              
Time.Gravity.Linear.Acceleration.Mean.()-Y.Axis                              
Time.Gravity.Linear.Acceleration.Mean.()-Z.Axis                              
Time.Gravity.Linear.Acceleration.Standard.Deviation.()-X.Axis                
Time.Gravity.Linear.Acceleration.Standard.Deviation.()-Y.Axis                
Time.Gravity.Linear.Acceleration.Standard.Deviation.()-Z.Axis                
Time.Domain.Linear.Acceleration.Jerk.Mean.()-X.Axis                          
Time.Domain.Linear.Acceleration.Jerk.Mean.()-Y.Axis                          
Time.Domain.Linear.Acceleration.Jerk.Mean.()-Z.Axis                          
Time.Domain.Linear.Acceleration.Jerk.Standard.Deviation.()-X.Axis            
Time.Domain.Linear.Acceleration.Jerk.Standard.Deviation.()-Y.Axis            
Time.Domain.Linear.Acceleration.Jerk.Standard.Deviation.()-Z.Axis            
Time.Domain.Angular.Velocity.Mean.()-X.Axis                                  
Time.Domain.Angular.Velocity.Mean.()-Y.Axis                                  
Time.Domain.Angular.Velocity.Mean.()-Z.Axis                                  
[24] "Time.Domain.Angular.Velocity.Standard.Deviation.()-X.Axis"                    
[25] "Time.Domain.Angular.Velocity.Standard.Deviation.()-Y.Axis"                    
[26] "Time.Domain.Angular.Velocity.Standard.Deviation.()-Z.Axis"                    
[27] "Time.Domain.Angular.Acceleration.Mean.()-X.Axis"                              
[28] "Time.Domain.Angular.Acceleration.Mean.()-Y.Axis"                              
[29] "Time.Domain.Angular.Acceleration.Mean.()-Z.Axis"                              
[30] "Time.Domain.Angular.Acceleration.Standard.Deviation.()-X.Axis"                
[31] "Time.Domain.Angular.Acceleration.Standard.Deviation.()-Y.Axis"                
[32] "Time.Domain.Angular.Acceleration.Standard.Deviation.()-Z.Axis"                
[33] "Time.Domain.Linear.Acceleration.Magnitude.Mean.()"                            
[34] "Time.Domain.Linear.Acceleration.Magnitude.Standard.Deviation.()"              
[35] "Time.Gravity.Linear.Acceleration.Magnitude.Mean.()"                           
[36] "Time.Gravity.Linear.Acceleration.Magnitude.Standard.Deviation.()"             
[37] "Time.Domain.Linear.Acceleration.Jerk.Magnitude.Mean.()"                       
[38] "Time.Domain.Linear.Acceleration.Jerk.Magnitude.Standard.Deviation.()"         
[39] "Time.Domain.Angular.Velocity.Magnitude.Mean.()"                               
[40] "Time.Domain.Angular.Velocity.Magnitude.Standard.Deviation.()"                 
[41] "Time.Domain.Angular.Acceleration.Magnitude.Mean.()"                           
[42] "Time.Domain.Angular.Acceleration.Magnitude.Standard.Deviation.()"             
[43] "Frequency.Domain.Linear.Acceleration.Mean.()-X.Axis"                          
[44] "Frequency.Domain.Linear.Acceleration.Mean.()-Y.Axis"                          
[45] "Frequency.Domain.Linear.Acceleration.Mean.()-Z.Axis"                          
[46] "Frequency.Domain.Linear.Acceleration.Standard.Deviation.()-X.Axis"            
[47] "Frequency.Domain.Linear.Acceleration.Standard.Deviation.()-Y.Axis"            
[48] "Frequency.Domain.Linear.Acceleration.Standard.Deviation.()-Z.Axis"            
[49] "Frequency.Domain.Linear.Acceleration.Jerk.Mean.()-X.Axis"                     
[50] "Frequency.Domain.Linear.Acceleration.Jerk.Mean.()-Y.Axis"                     
[51] "Frequency.Domain.Linear.Acceleration.Jerk.Mean.()-Z.Axis"                     
[52] "Frequency.Domain.Linear.Acceleration.Jerk.Standard.Deviation.()-X.Axis"       
[53] "Frequency.Domain.Linear.Acceleration.Jerk.Standard.Deviation.()-Y.Axis"       
[54] "Frequency.Domain.Linear.Acceleration.Jerk.Standard.Deviation.()-Z.Axis"       
[55] "Frequency.Domain.Angular.Velocity.Mean.()-X.Axis"                             
[56] "Frequency.Domain.Angular.Velocity.Mean.()-Y.Axis"                             
[57] "Frequency.Domain.Angular.Velocity.Mean.()-Z.Axis"                             
[58] "Frequency.Domain.Angular.Velocity.Standard.Deviation.()-X.Axis"               
[59] "Frequency.Domain.Angular.Velocity.Standard.Deviation.()-Y.Axis"               
[60] "Frequency.Domain.Angular.Velocity.Standard.Deviation.()-Z.Axis"               
[61] "Frequency.Domain.Linear.Acceleration.Magnitude.Mean.()"                       
[62] "Frequency.Domain.Linear.Acceleration.Magnitude.Standard.Deviation.()"         
[63] "Frequency.Domain.BodyLinear.Acceleration.Jerk.Magnitude.Mean.()"              
[64] "Frequency.Domain.BodyLinear.Acceleration.Jerk.Magnitude.Standard.Deviation.()"
[65] "Frequency.Domain.BodyAngular.Velocity.Magnitude.Mean.()"                      
[66] "Frequency.Domain.BodyAngular.Velocity.Magnitude.Standard.Deviation.()"        
[67] "Frequency.Domain.BodyAngular.Acceleration.Magnitude.Mean.()"                  
[68] "Frequency.Domain.BodyAngular.Acceleration.Magnitude.Standard.Deviation.()"  

###activity name
Activity
WALKING
WALKING_UPSTAIRS
WALKING_DOWNSTAIRS
SITTING
STANDING
LAYING
