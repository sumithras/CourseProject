# CourseProject: Getting and Cleaning Data

The R script run_analysis.R performs the data extraction and tidying of the "Human Activity Recognition Using Smartphones" data obtained from the website http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones. This data is broken up into a training part and a test part. In addition, each of the 2 parts are split across 3 files. This R script combines the data into a single tidy data set and performs some transformations. The detailed explanation of the steps perfomed in the script are provided below,

1.  Lines  6 through 10: Merge the training and test feature vector data into a single data set and store in dataframe variable "allX".
2.  Lines 12 through 16: Change default column names in "allX" to descriptive ones using the codebook file "features.txt".
3.  Lines 18 through 23: Merge the training and test activity label data into a single data set and store in dataframe variable "allY".
4.  Lines 25 through 30: Merge the training and test subject data into a single data set and store in dataframe variable "allSub".
5.  Lines 32 through 33: Combine all three data frames (subject, activity and the 561 feature vector) into dataframe variable "allData".
6.  Lines 35 through 41: Add the activity description to the dataframe "allData" and store in dataframe "tidyData".
7.  Lines 43 through 47: Discard the un-needed columns in dataframe "tidyData" and store the needed ones in dataframe "meanAndStdData".
8.  Lines 49 through 50: Calculate the required group averages and store in dataframe "avgData"
9.  Lines 51 through 55: Rename numeric columns of dataframe "avgData", to signify that they are averages of the original features.
10. Lines 57 through 59: Write the data in dataframe "avgData", to a file to generate the required data set for the project.

