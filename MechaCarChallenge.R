library(dplyr)

mecha_car <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F) 

head(mecha_car)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_car) #generate multiple linear regression model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_car)) #generate summary statistics



lm(mpg ~ vehicle_length,mecha_car) #create linear model for vehicle_length
summary(lm(mpg ~ vehicle_length,mecha_car)) #summarize linear model

lm(mpg ~ ground_clearance,mecha_car) #create linear model for ground_clearance
summary(lm(mpg ~ ground_clearance,mecha_car)) #summarize linear model

lm(mpg ~ vehicle_length + ground_clearance,data=mecha_car) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + ground_clearance,data=mecha_car)) #generate summary statistics
