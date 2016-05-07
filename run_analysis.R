library("LaF")
library("data.table")
library("dplyr")
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
test_ds$subject <-  fread("UCI\\test\\subject_test.txt", header = FALSE, 
                         stringsAsFactors = FALSE)
train_ds$subject <- fread("UCI\\train\\subject_train.txt", header = FALSE, 
                         stringsAsFactors = FALSE)
