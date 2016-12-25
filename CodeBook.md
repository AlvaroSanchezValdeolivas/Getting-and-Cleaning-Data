# Study desing

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.

Content of the raw data used:
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.
- 'train/subject_train.txt': Training subjects.
- 'test/subject_test.txt': Test subjects.

To create the tidy data the next steps have been followed:
-Merge the training and the test sets to create one data set (“xtotal”), using “X_train.txt”, “y_train.txt”, “X_test.txt”, “y_test.txt”, “subject_train.txt”, “subject_test.txt” and “'features.txt” .
-Extract only the measurements on the mean and standard deviation for each measurement (“xmeanstd”).
-Uses descriptive activity names to name the activities in the data set, using “'activity_labels.txt”.
-Appropriately labels the data set with descriptive variable names.
-From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject (“avdata”). This table is exported into “Tidy data.txt”.

# Code book

All the variables represent the corresponding mean value for each activity and each subject.

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- Time Body Accelerometer mean X: mean body acceleration signal in standard gravity units 'g' obtained by subtracting the gravity from the total acceleration in the X direction.
- Time Body Accelerometer mean Y
- Time Body Accelerometer mean Z
- Time Body Accelerometer std X: standard deviation body acceleration signal in standard gravity units 'g' obtained by subtracting the gravity from the total acceleration in the X direction.
- Time Body Accelerometer std Y
- Time Body Accelerometer std Z
- Time Gravity Accelerometer mean X: mean gravity acceleration signal in standard gravity units 'g' in the X direction.
- Time Gravity Accelerometer mean Y
- Time Gravity Accelerometer mean Z
- Time Gravity Accelerometer std X: standard deviation gravity acceleration signal in standard gravity units 'g' in the X direction.
- Time Gravity Accelerometer std Y
- Time Gravity Accelerometer std Z
- Time Body Accelerometer Jerk mean X: mean Jerk signal (time derivative) of “Time Body Accelerometer mean X” in g/s.
- Time Body Accelerometer Jerk mean Y
- Time Body Accelerometer Jerk mean Z
- Time Body Accelerometer Jerk std X: standard deviation of Jerk signal (time derivative) of “Time Body Accelerometer mean X” in g/s.
- Time Body Accelerometer Jerk std Y
- Time Body Accelerometer Jerk std Z
- Time Body Gyroscope mean X: mean angular velocity vector measured by the gyroscope in the X direction. The units are radians/second.
- Time Body Gyroscope mean Y
- Time Body Gyroscope mean Z
- Time Body Gyroscope std X: standard deviation of angular velocity vector measured by the gyroscope in the X direction. The units are radians/second.
- Time Body Gyroscope std Y
- Time Body Gyroscope std Z
- Time Body Gyroscope Jerk mean X: mean of Jerk signal (time derivative) of angular velocity vector measured by the gyroscope in the X direction. The units are radians/second^2.
- Time Body Gyroscope Jerk mean Y
- Time Body Gyroscope Jerk mean Z
- Time Body Gyroscope Jerk std X: standard deviation of Jerk signal (time derivative) of angular velocity vector measured by the gyroscope in the X direction. The units are radians/second^2.
- Time Body Gyroscope Jerk std Y
- Time Body Gyroscope Jerk std Z
- Time Body Accelerometer Magnitud mean: magnitude of three dimensional signals (Euclidean norm) of “Time Body Accelerometer mean” in standard gravity units.
- Time Body Accelerometer Magnitude std: magnitude of three dimensional signals (Euclidean norm) of “Time Body Accelerometer std” in standard gravity units.
- Time Gravity Accelerometer Magnitude mean: magnitude of three dimensional signals (Euclidean norm) of “Time Gravity Accelerometer mean” in standard gravity units.
- Time Gravity Accelerometer Magnitude std: magnitude of three dimensional signals (Euclidean norm) of “Time Gravity Accelerometer std” in standard gravity units.
- Time Body Accelerometer Jerk Magnitude mean: magnitude of three dimensional signals (Euclidean norm) of “Time Body Accelerometer Jerk mean” in g/s.
- Time Body Accelerometer Jerk Magnitude std: magnitude of three dimensional signals (Euclidean norm) of “Time Body Accelerometer Jerk std” in g/s.
- Time Body Gyroscope Magnitude mean: magnitude of three dimensional signals (Euclidean norm) of “Time Body Gyroscope mean” in rad/s.
- Time Body Gyroscope Magnitude std: magnitude of three dimensional signals (Euclidean norm) of “Time Body Gyroscope std” in rad/s.
- Time Body Gyroscope Jerk Magnitude mean: magnitude of three dimensional signals (Euclidean norm) of “Time Body Gyroscope Jerk mean” in rad/s^2.
- Time Body Gyroscope Jerk Magnitude std: magnitude of three dimensional signals (Euclidean norm) of “Time Body Gyroscope Jerk std” in rad/s^2.

A Fast Fourier Transform (FFT) has been applied to some of the previews signals producing the next variables:

- Fourier Body Accelerometer mean X
- Fourier Body Accelerometer mean Y
- Fourier Body Accelerometer mean Z
- Fourier Body Accelerometer std X
- Fourier Body Accelerometer std Y
- Fourier Body Accelerometer std Z
- Fourier Body Accelerometer mean Frequency X
- Fourier Body Accelerometer mean Frequency Y
- Fourier Body Accelerometer mean Frequency Z
- Fourier Body Accelerometer Jerk mean X
- Fourier Body Accelerometer Jerk mean Y
- Fourier Body Accelerometer Jerk mean Z
- Fourier Body Accelerometer Jerk std X
- Fourier Body Accelerometer Jerk std Y
- Fourier Body Accelerometer Jerk std Z
- Fourier Body Accelerometer Jerk mean Frequency X
- Fourier Body Accelerometer Jerk mean Frequency Y
- Fourier Body Accelerometer Jerk mean Frequency Z
- Fourier Body Gyroscope mean X
- Fourier Body Gyroscope mean Y
- Fourier Body Gyroscope mean Z
- Fourier Body Gyroscope std X
- Fourier Body Gyroscope std Y
- Fourier Body Gyroscope std Z
