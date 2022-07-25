# Deliverable 1: Linear Regression to Predict MPG
library(dplyr)

mecha_car <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F) # import and read in csv

head(mecha_car)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_car) #generate multiple linear regression model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_car)) #generate summary statistics



#Additional models 

lm(mpg ~ vehicle_length,mecha_car) #create linear model for vehicle_length
summary(lm(mpg ~ vehicle_length,mecha_car)) #summarize linear model

lm(mpg ~ ground_clearance,mecha_car) #create linear model for ground_clearance
summary(lm(mpg ~ ground_clearance,mecha_car)) #summarize linear model

lm(mpg ~ vehicle_length + ground_clearance,data=mecha_car) #generate multiple linear regression model for two variables
summary(lm(mpg ~ vehicle_length + ground_clearance,data=mecha_car)) #generate summary statistics




#Deliverable 2: Create Visualizations for the Trip Analysis
suspension_coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F) #import and read in csv

head(suspension_coil)

library(tidyverse)

total_summary <- suspension_coil %>% 
  summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') #get the mean, median, variance, and standard deviation of the suspension coil’s PSI column 

lot_summary <- suspension_coil %>% 
  group_by(Manufacturing_Lot) %>%
  summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')#group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column.




#Deliverable 3: T-Tests on Suspension Coils
t.test(suspension_coil$PSI,mu=1500) #PSI across all manufacturing lots



t.test(suspension_coil$PSI,mu=1500,data=subset(suspension_coil, suspension_coil$Manufacturing_Lot =="Lot1"))
t.test(suspension_coil$PSI,mu=1500,data=subset(suspension_coil, suspension_coil$Manufacturing_Lot =="Lot2"))
t.test(suspension_coil$PSI,mu=1500,data=subset(suspension_coil, suspension_coil$Manufacturing_Lot =="Lot3"))
