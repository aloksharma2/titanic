setwd("D:/Kagle/titanic/titanic")

library(dplyr)

test <- read.csv("test.csv")
train <- read.csv("train.csv")

View(test)
View(train)


master_data <- bind_rows(train,test)
View(master_data)

colSums(is.na(master_data))
summary(master_data$Age)

sum(master_data$Cabin == "") / nrow(master_data) * 100 # Cabin has 77% blanks

master_data$Cabin <- NULL

master_data[which(is.na(master_data$Fare)), ]

