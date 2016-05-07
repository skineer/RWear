library("LaF")
library("data.table")
library("plyr")
library("dplyr")
library("sqldf")
# set the working directory
setwd("C:\\Users\\Renato\\Desktop")

# read the features.txt to name the columns
features <- read.table("UCI\\features.txt", header = FALSE, sep = ' ', 
                       stringsAsFactors = FALSE)
features_names <- features[,2]

#read test and training data sets
#too big to read with simple fwf
test_ds <- laf_open_fwf("UCI\\test\\X_test.txt",  
                    column_widths = c(17, rep(16,559), 15), 
                    column_names = features_names,
                    column_types = rep("character",561))[,]

train_ds <- laf_open_fwf("UCI\\train\\X_train.txt",  
                        column_widths = c(17, rep(16,559), 15), 
                        column_names = features_names,
                        column_types = rep("character",561))[,]

# add the subject number
test_subject <-  fread("UCI\\test\\subject_test.txt", header = FALSE, 
                         stringsAsFactors = FALSE, col.names = "Subject")
train_subject <- fread("UCI\\train\\subject_train.txt", header = FALSE, 
                         stringsAsFactors = FALSE, col.names = "Subject")

# cbind the subject column
test_ds <- cbind(test_ds, test_subject)
train_ds <- cbind(train_ds, train_subject)

# union
all_data <- rbind.fill(test_ds, train_ds)

# name the columns again to preserve the ()
features_names[562] = "Subject"
colnames(all_data) <- features_names

# garbage collect 1
rm("features","test_ds","test_subject","train_ds",
   "train_subject", "features_names")

# select only mean and std columns
selection <- grep("(-mean\\(\\)|-std\\(\\))", names(all_data), value = TRUE)
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
selection <- gsub("GyroJerkMag", "Gyro_Jerk_Mag", selection)
selection <- gsub("GyroMag", "Gyro_Mag", selection)
selection <- gsub("AccJerkMag", "Acc_Jark_Mag", selection)
selection <- gsub("AccMag", "Acc_Mag", selection)
selection <- gsub("-X", "_X", selection)
selection <- gsub("-Y", "_Y", selection)
selection <- gsub("-Z", "_Z", selection)
colnames(mean_std) <- selection

# garbage collection 2
rm("all_data","selection")

# generate de avarage per subject
tmp <- as.data.frame(sapply(X = mean_std, FUN = as.numeric))
mean_per_subject <- aggregate(tmp[, 1:66], list(tmp$Subject), mean)
colnames(mean_per_subject)[1] <- "Subject"

# garbage collection 3
rm("tmp")