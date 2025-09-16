# Introduction to R programming language
# Variables Types
# Note: basic variable like number, string, logical -> vector automatically

mtcars # built-in datasets
mtcars[1,] # get the first row
mtcars[,1] # get the first column
# NOTE: in R languages index start at 1
# NOTE: name of the car = rownames not the row data
# [,] = show the [row, column] of the data
mtcars[2,3] # get row number 2 and column number 3
mtcars[5:7, 3:7] # sliding the number from row number 5-7 and, column number 3-7
# Note: sliding concept the same with python but python not count the last index but r does

# 1. 【﻿Ｄａｔａｆｒａｍｅ】
dim(mtcars) # check dimensions of the dataframe
nrow(mtcars) # check number of row
ncol(mtcars) # check number of column
str(mtcars) # get structure of the dataframe
# observations = rows
# variables = columns

# 2. 𝙎𝙩𝙧𝙞𝙣𝙜
# when you define a string -> generate a vector -> you can assign numbers or strings to a vector
a <- "good"
a
class(a) # check type of the variable in R -> str in R is structure function
b <- c("good", "morning")
b
b[2]
class(b)

# 3. Ｎｕｍｂｅｒｓ
a <- 1 # a = vector -> assign 1 in a
a
class(a)
b <- a*4+3 # you can assign a formula as well
b

ls() # check how many vector
objects() # the same with objects

a <- c(1,2,3,4,5)
a
b <- c(1:5)
b
a[4] # get 4th element from vector a
a[4] - b[2]
a[6] # there is no 6th element from the vector -> not error -> return NA
length(a) #show how many data in vector

# 4. Factors
class(mtcars) # dataframe type
class(mtcars$gear) # numberic type
factor(mtcars$gear)
class(factor(mtcars$gear)) # factor type
factor(mtcars$gear)[4]
colnames(mtcars) # find all columns name
rownames(mtcars) # find all rows name

mtcars$gear
mtcars$am
table(mtcars$gear) # create frequency table of gear field
table(mtcars$am) # create frequency table of am field
table(mtcars$gear, mtcars$am) # create 2d frequency table relate with gear and am
mtcars[rownames(mtcars) == "Merc 280",] # find the data that has row name == "Merc 280", Note: don't forget to use (,) inside the [] because it the filter
rownames(mtcars) == "Merc 280"
mtcars

#find all cars style if they gear == 4
rownames(mtcars[mtcars$gear == 4,])
mtcars[mtcars$gear == 4, ]
# all of these 3 command are the same meaning
mtcars[mtcars['gear']==4, 'gear']
mtcars[mtcars['gear']==4,]$gear
subset(mtcars, gear == 4, select=gear)
# -----------

