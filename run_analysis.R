# the file for this script is available on:
# "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
library("LaF")
library("data.table")
library("plyr")
library("dplyr")
library("sqldf")

# set the working directory
setwd("C:\\Users\\Renato\\Desktop")

# read the features.txt to name the columns
features_names <- read.table("UCI\\features.txt", header = FALSE, sep = ' ', 
                       stringsAsFactors = FALSE)[,2]
activity_id_names <- read.table("UCI\\activity_labels.txt", header = FALSE, sep = ' ', 
                             stringsAsFactors = FALSE, col.names = c("ID","Activity"), 
                             colClasses = c("character","character"))

#read test and training data sets

test_ds_x <- laf_open_fwf("UCI\\test\\X_test.txt",  
                    column_widths = c(17, rep(16,559), 15), 
                    column_names = features_names,
                    column_types = rep("character",561))[,]

test_ds_y <- laf_open_fwf("UCI\\test\\y_test.txt",  
                          column_widths = 1, 
                          column_names = "Activity_ID",
                          column_types = "character")[,]

train_ds_x <- laf_open_fwf("UCI\\train\\X_train.txt",  
                        column_widths = c(17, rep(16,559), 15), 
                        column_names = features_names,
                        column_types = rep("character",561))[,]

train_ds_y <- laf_open_fwf("UCI\\train\\y_train.txt",  
                           column_widths = 1, 
                           column_names = "Activity_ID",
                           column_types = "character")[,]

# add the subject number
test_subject <-  fread("UCI\\test\\subject_test.txt", header = FALSE, 
                         stringsAsFactors = FALSE, col.names = "Subject")
train_subject <- fread("UCI\\train\\subject_train.txt", header = FALSE, 
                         stringsAsFactors = FALSE, col.names = "Subject")

# cbind the subject column and activity ID
test_ds <- cbind(test_ds_x, test_ds_y, test_subject )
train_ds <- cbind(train_ds_x, train_ds_y, train_subject)

# union
all_data <- rbind.fill(test_ds, train_ds)


#all_data <- all_data[,c(2:562, 563, 564, 1)]

# name the columns again to preserve the ()
features_names[562] = "Activity_ID"
features_names[563] = "Subject"
colnames(all_data) <- features_names

# garbage collect 1
rm("features_names","test_ds", "test_ds_x","test_ds_y","test_subject","train_ds", "train_ds_x","train_ds_y",
   "train_subject")

# select only mean and std columns
selection <- grep("mean|std", names(all_data), value = TRUE)
selection[length(selection) + 1] <- "Activity_ID"
selection[length(selection) + 1] <- "Subject"
mean_std <- all_data[,selection]

# Improving the description of the variable names
selection <- gsub("tBody", "Time_Body_", selection)
selection <- gsub("tGravity", "Time_Gravity_", selection)
selection <- gsub("_Acc", "_Acc_", selection)
selection <- gsub("_Jerk", "_Jerk_Sig_", selection)
selection <- gsub("fBodyBody", "Freq_Body_", selection)
selection <- gsub("fBody", "Freq_Body_", selection)
selection <- gsub("_-", "-", selection)
selection <- gsub("-mean\\(\\)", "_Mean", selection)
selection <- gsub("-std\\(\\)", "_Stdev", selection)
selection <- gsub("-meanFreq\\(\\)", "_Mean_Freq", selection)
selection <- gsub("GyroJerkMag", "Gyro_Jerk_Mag", selection)
selection <- gsub("GyroMag", "Gyro_Mag", selection)
selection <- gsub("AccJerkMag", "Acc_Jark_Mag", selection)
selection <- gsub("AccMag", "Acc_Mag", selection)
selection <- gsub("-X", "_X", selection)
selection <- gsub("-Y", "_Y", selection)
selection <- gsub("-Z", "_Z", selection)
colnames(mean_std) <- selection

# transform to numeric
tmp <- as.data.frame(sapply(X = mean_std, FUN = as.numeric))

#join to add activity names
tmp <- merge.data.frame(tmp, activity_id_names, by.x = "Activity_ID", by.y = "ID")

mean_per_subject <- aggregate(tmp[, 1:80], list(tmp$Subject, tmp$Activity), mean)
colnames(mean_per_subject)[1] <- "Subject"
colnames(mean_per_subject)[2] <- "Activity"

# garbage collection 2
rm("tmp", "activity_id_names", "all_data", "selection")

mean_per_subject <- arrange(mean_per_subject, Subject)

# save the files
write.table(x = mean_per_subject, file = "mean_per_subject.txt", row.name = FALSE)
write.table(x = mean_std, file = "mean_std.txt", row.name = FALSE)
