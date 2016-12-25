
# Packages
library(tidyr)
library(dplyr)

# Data download
fileurl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileurl, dest="Project data.zip", mode="wb") 
unzip ("Project data.zip") 

# 1. Create xtotal to store merged data of traing and test set
feat<-read.table("UCI HAR Dataset/features.txt")
xtotal<-bind_rows(read.table("UCI HAR Dataset/train/X_train.txt"),read.table("UCI HAR Dataset/test/X_test.txt"))
ytotal<-bind_rows(read.table("UCI HAR Dataset/train/y_train.txt"),read.table("UCI HAR Dataset/test/y_test.txt"))
subjtotal<-bind_rows(read.table("UCI HAR Dataset/train/subject_train.txt"),read.table("UCI HAR Dataset/test/subject_test.txt"))
names(xtotal)<-feat$V2
xtotal<-cbind(activity=ytotal$V1,subject=subjtotal$V1,xtotal)

# 2. Extract mean and standard deviation storing them in xmeanstd
aux<-sort(c(grep("*mean",feat$V2),grep("*std",feat$V2)))
xmeanstd<-xtotal[,c(1,2,2+aux)]

# 3. Name the activities with descriptive names read from "activity_label.txt"
act<-read.table("UCI HAR Dataset/activity_labels.txt")
names(act)<-c("Number","Description")
for (i in 1:dim(act)[1]){
    xmeanstd$activity<-gsub(act$Number[i],act$Description[i],xmeanstd$activity)
}

# 4. Improve descriptive variable names
names(xmeanstd)<- sub("^t","Time ",names(xmeanstd))
names(xmeanstd)<- gsub("Body","Body ",names(xmeanstd))
names(xmeanstd)<- sub("Gravity","Gravity ",names(xmeanstd))
names(xmeanstd)<- sub("Acc","Accelerometer ",names(xmeanstd))
names(xmeanstd)<- sub("Gyro","Gyroscope ",names(xmeanstd))
names(xmeanstd)<- sub("Mag"," Magnitude",names(xmeanstd))
names(xmeanstd)<- sub("fBody","Fourier Body",names(xmeanstd))
names(xmeanstd)<- sub("meanFreq","mean Frequency",names(xmeanstd))
names(xmeanstd)<- gsub("-"," ",names(xmeanstd))
names(xmeanstd)<- sub("\\(","",names(xmeanstd))
names(xmeanstd)<- sub("\\)","",names(xmeanstd))

# 5. Create a tidy data set with the average of each variable for each activity
# and each subject
avdata<-xmeanstd %>%
    unite(actsub,activity,subject,sep=" ") %>%
    group_by(actsub) %>%
    summarize_all(mean) %>%
    separate(actsub,c("activity","subject"),sep=" ")
avdata$subject<-as.numeric(avdata$subject)
avdata<-arrange(avdata,activity,subject)

# Write the tidy data into a text file
write.table(avdata,file="Tidy data.txt",row.names = FALSE)
rm(act,feat,subjtotal,ytotal,aux,i)