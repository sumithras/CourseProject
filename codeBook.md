Average data by Activity and Subject, of the "Human Activity Recognition Using Smartphones" data
================================================================================================

The data set in the file averageDataByActivityAndSubject.txt contains data derived from the "Human Activity Recognition Using Smartphones" data available at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones. The original data was broken up into a training part and a test part. In addition, each of the 2 parts were split across 3 files.

We prepared this dataset by applying the following steps

1. Merge the training and test data into a single data set.
2. One of the data elements in the original data is the activity code. The original data provides the activity description corresponding to the 6 distinct activity codes in a separate file. We replaced the 6 activity codes in the data with the corresponding activity descriptions. This resulted in a data set with 563 variables that includes the activity and subject along with 561 feature measurements.
3. We added descriptive column headings to the 563 variables.
4. Next, all but 79 of the 561 features that were discarded. The features contaning mean and standard deviation for each measurement were selected.
5. We then transformed the data set from step 4, by getting the average of each of the 79 features, for each activity and each subject

The steps above are encoded in an R script, run_analysis.R, that is made available along with this dataset.

The data file contains the following columns in the listed order.

1 activity
2 subject
3 avgTBodyAcc-mean()-X
4 avgTBodyAcc-mean()-Y
5 avgTBodyAcc-mean()-Z
6 avgTGravityAcc-mean()-X
7 avgTGravityAcc-mean()-Y
8 avgTGravityAcc-mean()-Z
9 avgTBodyAccJerk-mean()-X
10 avgTBodyAccJerk-mean()-Y
11 avgTBodyAccJerk-mean()-Z
12 avgTBodyGyro-mean()-X
13 avgTBodyGyro-mean()-Y
14 avgTBodyGyro-mean()-Z
15 avgTBodyGyroJerk-mean()-X
16 avgTBodyGyroJerk-mean()-Y
17 avgTBodyGyroJerk-mean()-Z
18 avgTBodyAccMag-mean()
19 avgTGravityAccMag-mean()
20 avgTBodyAccJerkMag-mean()
21 avgTBodyGyroMag-mean()
22 avgTBodyGyroJerkMag-mean()
23 avgFBodyAcc-mean()-X
24 avgFBodyAcc-mean()-Y
25 avgFBodyAcc-mean()-Z
26 avgFBodyAcc-meanFreq()-X
27 avgFBodyAcc-meanFreq()-Y
28 avgFBodyAcc-meanFreq()-Z
29 avgFBodyAccJerk-mean()-X
30 avgFBodyAccJerk-mean()-Y
31 avgFBodyAccJerk-mean()-Z
32 avgFBodyAccJerk-meanFreq()-X
33 avgFBodyAccJerk-meanFreq()-Y
34 avgFBodyAccJerk-meanFreq()-Z
35 avgFBodyGyro-mean()-X
36 avgFBodyGyro-mean()-Y
37 avgFBodyGyro-mean()-Z
38 avgFBodyGyro-meanFreq()-X
39 avgFBodyGyro-meanFreq()-Y
40 avgFBodyGyro-meanFreq()-Z
41 avgFBodyAccMag-mean()
42 avgFBodyAccMag-meanFreq()
43 avgFBodyBodyAccJerkMag-mean()
44 avgFBodyBodyAccJerkMag-meanFreq()
45 avgFBodyBodyGyroMag-mean()
46 avgFBodyBodyGyroMag-meanFreq()
47 avgFBodyBodyGyroJerkMag-mean()
48 avgFBodyBodyGyroJerkMag-meanFreq()
49 avgTBodyAcc-std()-X
50 avgTBodyAcc-std()-Y
51 avgTBodyAcc-std()-Z
52 avgTGravityAcc-std()-X
53 avgTGravityAcc-std()-Y
54 avgTGravityAcc-std()-Z
55 avgTBodyAccJerk-std()-X
56 avgTBodyAccJerk-std()-Y
57 avgTBodyAccJerk-std()-Z
58 avgTBodyGyro-std()-X
59 avgTBodyGyro-std()-Y
60 avgTBodyGyro-std()-Z
61 avgTBodyGyroJerk-std()-X
62 avgTBodyGyroJerk-std()-Y
63 avgTBodyGyroJerk-std()-Z
64 avgTBodyAccMag-std()
65 avgTGravityAccMag-std()
66 avgTBodyAccJerkMag-std()
67 avgTBodyGyroMag-std()
68 avgTBodyGyroJerkMag-std()
69 avgFBodyAcc-std()-X
70 avgFBodyAcc-std()-Y
71 avgFBodyAcc-std()-Z
72 avgFBodyAccJerk-std()-X
73 avgFBodyAccJerk-std()-Y
74 avgFBodyAccJerk-std()-Z
75 avgFBodyGyro-std()-X
76 avgFBodyGyro-std()-Y
77 avgFBodyGyro-std()-Z
78 avgFBodyAccMag-std()
79 avgFBodyBodyAccJerkMag-std()
80 avgFBodyBodyGyroMag-std()
81 avgFBodyBodyGyroJerkMag-std()
