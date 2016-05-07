# RWear
Samsung Accelerometer Data Analysis

The script run_analysis.R was developed with the objective of create a tidy file from Human Activity Recognition Using Smartphones Dataset and also create a file with the mean of all the observations grouped by the subjects that did the experiments.

Basically the script reads all data files, name all the columns properly, filter only the mean and standard deviation observations, merge the training and test datasets and aggregate the informations to summarize the means of all observations.

The files created by the scripts are:
	mean_per_subject.csv
	mean_std.csv

For more information about the origin dataset, please visit the website:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

For information about the datasets please check the codebook:
https://github.com/skineer/RWear/blob/master/CodeBook.md