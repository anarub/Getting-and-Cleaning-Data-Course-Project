# Getting-and-Cleaning-Data-Course-Project
#How the r scipt works
##Initial
"data.location" is created as a directory to the required files. This combined with the subdirectory location and file name of each file to produce values for file location and name.
The file location and name values are used to load the data.
To keep the environment tidy the values are then removed (this is not so improtant now but becomes important once we reproduce the data set).


##Q1
Question one systematically builds up the database with x and y, test and train data. Admitedly the code could be more efficient but I felt leaving it simple was easier to follow.
A vector of headers are created and added to the dataframe.

More environmental tidy up. This stage removed duplicate data from the computers CPU.

##Q2
A vector is created with all headings that include mean() and std(). Looking at this vector "meanFreq" values were included; these do not seem appropriate and so are also removed.
The vector is then reordered (to keep discriptors togeather).
Using this vector a summary table is created.

More environmental tidy up; a decission was made to keep the data.complete dataframe for the purposes of cross checking but this could be removed here too.

##Q3
Combines the activity lable and the summary data frame. From an obcessive complusive point of view it reorders the table and introduces an unnecessary column. These are reorganised and removed.
More tidy up.

##Q4
Names of columns were changed to be more meaningful; these were based on the data readme.

##Q5
Creates a new dataframe from the calculted mean of each subject (30) and acitivity (6) being 180 rows in total (30 X 6).
This dataframe is then saved as "tidy_data.txt"


