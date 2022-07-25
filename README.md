# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
Write a short summary using a screenshot of the output from the linear regression, and address the following questions:
1) Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
    - vehicle_length  
    - ground_clearance
    - (Intercept)
2) Is the slope of the linear model considered to be zero? Why or why not?
    - The p-value of the multiple linear regression analysis is 5.35 x 10-11, which is much smaller than our assumed significance level of 0.05%. Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.
3) Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
    - There is a lack of significant variables which suggests the model only performs well with the current dataset

## Summary Statistics on Suspension Coils
Write a short summary using screenshots from your total_summary and lot_summary dataframes, and address the following question:
1) The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
    - The current manufacturing data meets this design specification for all manufacturing lots in total, however it does not when each lot is summarized individually. For all lots, the variance is approximately 62, which falls within the acceptable range. However when summarized separately it can be seen that Lot3 has a variance of approximately 170 which far exceeds the acceptable range.

## Study Design: MechaCar vs Competition.
Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.
In your description, address the following questions:
1) What metric or metrics are you going to test?
2) What is the null hypothesis or alternative hypothesis?
3) What statistical test would you use to test the hypothesis? And why?
4) What data is needed to run the statistical test?