library(dplyr)

# Set directory variable to avoid repetition.
dataDir <- "UCI HAR Dataset"

####### Step 1. Merges the training and the test sets to create one data set.
# Read data from train and test files and combine
trainX         <- read.table(paste(dataDir, "/train/X_train.txt", sep = ""))
testX          <- read.table(paste(dataDir, "/test/X_test.txt", sep = ""))
allX           <- rbind(trainX,testX)

####### Step 4. Appropriately labels the data set with descriptive variable names
# Read the feature names
features       <- read.table(paste(dataDir, "/features.txt", sep = ""))
# Assign feature names as column names for the data prepared above in the data frame "allX"  
colnames(allX) <- features[,2]

# Read activity code files for train and test data and combine
trainY             <- read.table(paste(dataDir, "/train/y_train.txt", sep = ""))
testY              <- read.table(paste(dataDir, "/test/y_test.txt", sep = ""))
allY               <- rbind(trainY, testY)
# Apply meaningful column name
colnames(allY)     <- "activity_code"

# Read subject data for both the train and test environment and combine
trainsub         <- read.table(paste(dataDir, "/train/subject_train.txt", sep = ""))
testsub          <- read.table(paste(dataDir, "/test/subject_test.txt", sep = ""))
allSub           <- rbind(trainsub,testsub)
# Apply meaningful column name
colnames(allSub) <- "subject"

# Combine all three data frames (subject, activity and the 561 features) into one data frame
allData <- cbind(allSub, allY, allX)

####### Step 3. Uses descriptive activity names to name the activities in the data set
# Read activity description file
activityDesc <- read.table(paste(dataDir, "/activity_labels.txt", sep = ""))
# Apply meaningful column name
colnames(activityDesc) <- c("activity_code", "activity")
# "Join" the activityDesc and allData
tidyData <- merge(activityDesc, allData, by.x = "activity_code", by.y = "activity_code", sort = FALSE)

####### Step 2. Extracts only the measurements on the mean and standard deviation for each measurement.
colsMean <- grep("mean()", names(tidyData))
colsStd  <- grep("std()", names(tidyData))
cols     <- c(2, 3, colsMean, colsStd)
meanAndStdData <- tidyData[,cols]

####### Step 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
by_actsub <- group_by(meanAndStdData, activity, subject)
avgData <- summarise_each(by_actsub, funs(mean))
col_names <- colnames(avgData)
col_names <- gsub("^t", "avgT", col_names)
col_names <- gsub("^f", "avgF", col_names)
colnames(avgData) <- col_names

# Writing the final dataset to a file
options(scipen = -10) # To get numbers in scientific notation in the file
write.table(avgData, file = "averageDataByActivityAndSubject.txt", quote = FALSE, row.names = FALSE)
