5 steps are perfomed here as outlined by the project guidelines:

1) Training and test data is merged. Three data sets were created here: xstuff, ystuff, and subjectstuff.
2) Extracts only measurements from mean and standard deviation for each measurement: only columns with these were taken out from the dataset. This was done with the aid of the file 'features.txt'.
3) Uses descriptive activities to name activities in dataset: this was done with the file 'activity_labels.txt'.
4) Label datasets with descriptive names: "activity" and "subject" were chosen for these using only a couple lines of code.
5) Create second, tidy dataset with averages of variables for each activity and subject: this was done using the package described in the README. colMeans presented some problems at first because I was using columns that couldn't be averaged (strings). The number for the range was reduced by a couple and I was able to get past the problem.

My variables xstuff, ystuff, and subjectstuff were from the zipped data provided at the link listed in the README.
meanstd is a variable I used when I pulled out mean and standard deviation. This is used in later calculations and contains this info about mean and std.
average is the final dataset I entered into tidyset.txt.
