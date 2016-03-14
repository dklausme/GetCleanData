# Makes sure I'm in the right directory
setwd('/Users/David/Documents/R/GetCleanData/UCI HAR Dataset'); 

# Imports info I'll need for labels 
features = read.table('./features.txt',header=FALSE); 
activity = read.table('./activity_labels.txt',header=FALSE);

# 1. Merges test and train
# Imports X info, merges
xtest = read.table('./test/X_test.txt',header=FALSE);
xtrain = read.table('./train/X_train.txt',header=FALSE);
xstuff = rbind(xtrain, xtest);

# Imports Y info, merges
ytest = read.table('./test/y_test.txt',header=FALSE);
ytrain = read.table('./train/y_train.txt',header=FALSE);
ystuff = rbind(ytrain, ytest);

# Imports subject info, merges
subjecttest = read.table('./test/subject_test.txt',header=FALSE);
subjecttrain = read.table('./train/subject_train.txt',header=FALSE);
subjectstuff = rbind(subjecttrain, subjecttest);

# 2. Pulls out columns with mean or standard deviation
meanstd = grep("-(mean|std)\\(\\)", features[, 2]);
xstuff = xstuff[, meanstd];

# 3. Uses activity names to name activities
ystuff[, 1] = activity[ystuff[, 1], 2];

# 4. Labels data with descriptive names
names(ystuff) <- "activity";
names(subjectstuff) = "subject";

# 5. Create second data set with averages for each variable for each activity/subject
final = cbind(xstuff,ystuff,subjectstuff);
average = ddply(final, .(subject, activity), function(x) colMeans(x[,1:66]));



  