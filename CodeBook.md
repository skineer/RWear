#Codebook

##mean_std.csv

Description: File with only the columns refered to mean and standard deviation

Observations: No data transformations applied at this time. All variables are character and the subject is numeric.
              All that was done to create this file was to filter the mean and standard deviation observations and to improve the names of the variables
			  
Columns:


   **Column Name** : Time_Body_Acc_Mean_X

   **Storage Mode**: character


  
   **Column Name** : Time_Body_Acc_Mean_Y

   **Storage Mode**: character


   **Column Name** : Time_Body_Acc_Mean_Z

   **Storage Mode**: character


   **Column Name** : Time_Body_Acc_Stdev_X

   **Storage Mode**: character


   **Column Name** : Time_Body_Acc_Stdev_Y

   **Storage Mode**: character


   **Column Name** : Time_Body_Acc_Stdev_Z

   **Storage Mode**: character


   **Column Name** : Time_Gravity_Acc_Mean_X

   **Storage Mode**: character


   **Column Name** : Time_Gravity_Acc_Mean_Y

   **Storage Mode**: character


   **Column Name** : Time_Gravity_Acc_Mean_Z

   **Storage Mode**: character


   **Column Name** : Time_Gravity_Acc_Stdev_X

   **Storage Mode**: character


   **Column Name** : Time_Gravity_Acc_Stdev_Y

   **Storage Mode**: character


   **Column Name** : Time_Gravity_Acc_Stdev_Z

   **Storage Mode**: character


   **Column Name** : Time_Body_Acc_Jerk_Sig_Mean_X

   **Storage Mode**: character


   **Column Name** : Time_Body_Acc_Jerk_Sig_Mean_Y

   **Storage Mode**: character


   **Column Name** : Time_Body_Acc_Jerk_Sig_Mean_Z

   **Storage Mode**: character


   **Column Name** : Time_Body_Acc_Jerk_Sig_Stdev_X

   **Storage Mode**: character


   **Column Name** : Time_Body_Acc_Jerk_Sig_Stdev_Y

   **Storage Mode**: character


   **Column Name** : Time_Body_Acc_Jerk_Sig_Stdev_Z

   **Storage Mode**: character


   **Column Name** : Time_Body_Gyro_Mean_X

   **Storage Mode**: character


   **Column Name** : Time_Body_Gyro_Mean_Y

   **Storage Mode**: character


   **Column Name** : Time_Body_Gyro_Mean_Z

   **Storage Mode**: character


   **Column Name** : Time_Body_Gyro_Stdev_X

   **Storage Mode**: character


   **Column Name** : Time_Body_Gyro_Stdev_Y

   **Storage Mode**: character


   **Column Name** : Time_Body_Gyro_Stdev_Z

   **Storage Mode**: character


   **Column Name** : Time_Body_GyroJerk_Mean_X

   **Storage Mode**: character


   **Column Name** : Time_Body_GyroJerk_Mean_Y

   **Storage Mode**: character


   **Column Name** : Time_Body_GyroJerk_Mean_Z

   **Storage Mode**: character


   **Column Name** : Time_Body_GyroJerk_Stdev_X

   **Storage Mode**: character


   **Column Name** : Time_Body_GyroJerk_Stdev_Y

   **Storage Mode**: character


   **Column Name** : Time_Body_GyroJerk_Stdev_Z

   **Storage Mode**: character


   **Column Name** : Time_Body_Acc_Mag_Mean

   **Storage Mode**: character


   **Column Name** : Time_Body_Acc_Mag_Stdev

   **Storage Mode**: character


   **Column Name** : Time_Gravity_Acc_Mag_Mean

   **Storage Mode**: character


   **Column Name** : Time_Gravity_Acc_Mag_Stdev

   **Storage Mode**: character


   **Column Name** : Time_Body_Acc_Jerk_Sig_Mag_Mean

   **Storage Mode**: character


   **Column Name** : Time_Body_Acc_Jerk_Sig_Mag_Stdev

   **Storage Mode**: character


   **Column Name** : Time_Body_Gyro_Mag_Mean

   **Storage Mode**: character


   **Column Name** : Time_Body_Gyro_Mag_Stdev

   **Storage Mode**: character


   **Column Name** : Time_Body_Gyro_Jerk_Mag_Mean

   **Storage Mode**: character


   **Column Name** : Time_Body_Gyro_Jerk_Mag_Stdev

   **Storage Mode**: character


   **Column Name** : Freq_Body_Acc_Mean_X

   **Storage Mode**: character


   **Column Name** : Freq_Body_Acc_Mean_Y

   **Storage Mode**: character


   **Column Name** : Freq_Body_Acc_Mean_Z

   **Storage Mode**: character


   **Column Name** : Freq_Body_Acc_Stdev_X

   **Storage Mode**: character


   **Column Name** : Freq_Body_Acc_Stdev_Y

   **Storage Mode**: character


   **Column Name** : Freq_Body_Acc_Stdev_Z

   **Storage Mode**: character


   **Column Name** : Freq_Body_AccJerk_Mean_X

   **Storage Mode**: character


   **Column Name** : Freq_Body_AccJerk_Mean_Y

   **Storage Mode**: character


   **Column Name** : Freq_Body_AccJerk_Mean_Z

   **Storage Mode**: character


   **Column Name** : Freq_Body_AccJerk_Stdev_X

   **Storage Mode**: character


   **Column Name** : Freq_Body_AccJerk_Stdev_Y

   **Storage Mode**: character


   **Column Name** : Freq_Body_AccJerk_Stdev_Z

   **Storage Mode**: character


   **Column Name** : Freq_Body_Gyro_Mean_X

   **Storage Mode**: character


   **Column Name** : Freq_Body_Gyro_Mean_Y

   **Storage Mode**: character


   **Column Name** : Freq_Body_Gyro_Mean_Z

   **Storage Mode**: character


   **Column Name** : Freq_Body_Gyro_Stdev_X

   **Storage Mode**: character


   **Column Name** : Freq_Body_Gyro_Stdev_Y

   **Storage Mode**: character


   **Column Name** : Freq_Body_Gyro_Stdev_Z

   **Storage Mode**: character


   **Column Name** : Freq_Body_Acc_Mag_Mean

   **Storage Mode**: character


   **Column Name** : Freq_Body_Acc_Mag_Stdev

   **Storage Mode**: character


   **Column Name** : Freq_Body_Acc_Jark_Mag_Mean

   **Storage Mode**: character


   **Column Name** : Freq_Body_Acc_Jark_Mag_Stdev

   **Storage Mode**: character


   **Column Name** : Freq_Body_Gyro_Mag_Mean

   **Storage Mode**: character


   **Column Name** : Freq_Body_Gyro_Mag_Stdev

   **Storage Mode**: character


   **Column Name** : Freq_Body_Gyro_Jerk_Mag_Mean

   **Storage Mode**: character


   **Column Name** : Freq_Body_Gyro_Jerk_Mag_Stdev

   **Storage Mode**: character

   
   **Column Name** : Subject
   
   **Storage Mode**: integer

   
   **Column Name** : Activity_ID
   
   **Storage Mode**: integer
   
## mean_per_subject.csv

Description: file with the mean of all the observations grouped by the subjects that did the experiments and activities performed

Observations: At this this all the variables were converted to numeric type, in order to calculate de mean, and aggregated by subjects.

Columns:

   **Column Name** : Subject

   **Storage Mode**: double

   
   **Column Name** : Activity

   **Storage Mode**: character

   
   **Column Name** : Activity_ID

   **Storage Mode**: double
   

   **Column Name** : Time_Body_Acc_Mean_X

   **Storage Mode**: double


   **Column Name** : Time_Body_Acc_Mean_Y

   **Storage Mode**: double


   **Column Name** : Time_Body_Acc_Mean_Z

   **Storage Mode**: double


   **Column Name** : Time_Body_Acc_Stdev_X

   **Storage Mode**: double


   **Column Name** : Time_Body_Acc_Stdev_Y

   **Storage Mode**: double


   **Column Name** : Time_Body_Acc_Stdev_Z

   **Storage Mode**: double


   **Column Name** : Time_Gravity_Acc_Mean_X

   **Storage Mode**: double


   **Column Name** : Time_Gravity_Acc_Mean_Y

   **Storage Mode**: double


   **Column Name** : Time_Gravity_Acc_Mean_Z

   **Storage Mode**: double


   **Column Name** : Time_Gravity_Acc_Stdev_X

   **Storage Mode**: double


   **Column Name** : Time_Gravity_Acc_Stdev_Y

   **Storage Mode**: double


   **Column Name** : Time_Gravity_Acc_Stdev_Z

   **Storage Mode**: double


   **Column Name** : Time_Body_Acc_Jerk_Sig_Mean_X

   **Storage Mode**: double


   **Column Name** : Time_Body_Acc_Jerk_Sig_Mean_Y

   **Storage Mode**: double


   **Column Name** : Time_Body_Acc_Jerk_Sig_Mean_Z

   **Storage Mode**: double


   **Column Name** : Time_Body_Acc_Jerk_Sig_Stdev_X

   **Storage Mode**: double


   **Column Name** : Time_Body_Acc_Jerk_Sig_Stdev_Y

   **Storage Mode**: double


   **Column Name** : Time_Body_Acc_Jerk_Sig_Stdev_Z

   **Storage Mode**: double


   **Column Name** : Time_Body_Gyro_Mean_X

   **Storage Mode**: double


   **Column Name** : Time_Body_Gyro_Mean_Y

   **Storage Mode**: double


   **Column Name** : Time_Body_Gyro_Mean_Z

   **Storage Mode**: double


   **Column Name** : Time_Body_Gyro_Stdev_X

   **Storage Mode**: double


   **Column Name** : Time_Body_Gyro_Stdev_Y

   **Storage Mode**: double


   **Column Name** : Time_Body_Gyro_Stdev_Z

   **Storage Mode**: double


   **Column Name** : Time_Body_GyroJerk_Mean_X

   **Storage Mode**: double


   **Column Name** : Time_Body_GyroJerk_Mean_Y

   **Storage Mode**: double


   **Column Name** : Time_Body_GyroJerk_Mean_Z

   **Storage Mode**: double


   **Column Name** : Time_Body_GyroJerk_Stdev_X

   **Storage Mode**: double


   **Column Name** : Time_Body_GyroJerk_Stdev_Y

   **Storage Mode**: double


   **Column Name** : Time_Body_GyroJerk_Stdev_Z

   **Storage Mode**: double


   **Column Name** : Time_Body_Acc_Mag_Mean

   **Storage Mode**: double


   **Column Name** : Time_Body_Acc_Mag_Stdev

   **Storage Mode**: double


   **Column Name** : Time_Gravity_Acc_Mag_Mean

   **Storage Mode**: double


   **Column Name** : Time_Gravity_Acc_Mag_Stdev

   **Storage Mode**: double


   **Column Name** : Time_Body_Acc_Jerk_Sig_Mag_Mean

   **Storage Mode**: double


   **Column Name** : Time_Body_Acc_Jerk_Sig_Mag_Stdev

   **Storage Mode**: double


   **Column Name** : Time_Body_Gyro_Mag_Mean

   **Storage Mode**: double


   **Column Name** : Time_Body_Gyro_Mag_Stdev

   **Storage Mode**: double


   **Column Name** : Time_Body_Gyro_Jerk_Mag_Mean

   **Storage Mode**: double


   **Column Name** : Time_Body_Gyro_Jerk_Mag_Stdev

   **Storage Mode**: double


   **Column Name** : Freq_Body_Acc_Mean_X

   **Storage Mode**: double


   **Column Name** : Freq_Body_Acc_Mean_Y

   **Storage Mode**: double


   **Column Name** : Freq_Body_Acc_Mean_Z

   **Storage Mode**: double


   **Column Name** : Freq_Body_Acc_Stdev_X

   **Storage Mode**: double


   **Column Name** : Freq_Body_Acc_Stdev_Y

   **Storage Mode**: double


   **Column Name** : Freq_Body_Acc_Stdev_Z

   **Storage Mode**: double


   **Column Name** : Freq_Body_AccJerk_Mean_X

   **Storage Mode**: double


   **Column Name** : Freq_Body_AccJerk_Mean_Y

   **Storage Mode**: double


   **Column Name** : Freq_Body_AccJerk_Mean_Z

   **Storage Mode**: double


   **Column Name** : Freq_Body_AccJerk_Stdev_X

   **Storage Mode**: double


   **Column Name** : Freq_Body_AccJerk_Stdev_Y

   **Storage Mode**: double


   **Column Name** : Freq_Body_AccJerk_Stdev_Z

   **Storage Mode**: double


   **Column Name** : Freq_Body_Gyro_Mean_X

   **Storage Mode**: double


   **Column Name** : Freq_Body_Gyro_Mean_Y

   **Storage Mode**: double


   **Column Name** : Freq_Body_Gyro_Mean_Z

   **Storage Mode**: double


   **Column Name** : Freq_Body_Gyro_Stdev_X

   **Storage Mode**: double


   **Column Name** : Freq_Body_Gyro_Stdev_Y

   **Storage Mode**: double


   **Column Name** : Freq_Body_Gyro_Stdev_Z

   **Storage Mode**: double


   **Column Name** : Freq_Body_Acc_Mag_Mean

   **Storage Mode**: double


   **Column Name** : Freq_Body_Acc_Mag_Stdev

   **Storage Mode**: double


   **Column Name** : Freq_Body_Acc_Jark_Mag_Mean

   **Storage Mode**: double


   **Column Name** : Freq_Body_Acc_Jark_Mag_Stdev

   **Storage Mode**: double


   **Column Name** : Freq_Body_Gyro_Mag_Mean

   **Storage Mode**: double


   **Column Name** : Freq_Body_Gyro_Mag_Stdev

   **Storage Mode**: double


   **Column Name** : Freq_Body_Gyro_Jerk_Mag_Mean

   **Storage Mode**: double


   **Column Name** : Freq_Body_Gyro_Jerk_Mag_Stdev

   **Storage Mode**: double
