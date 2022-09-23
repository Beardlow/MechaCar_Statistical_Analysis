# MechaCar_Statistical_Analysis
## The purpose of this analysis was to take data from MechaCar prototype testing results and to see if any of the recorded variables have an impact on the fuel efficiency (mpg/miles per gallon) of the prototype being tested. The second half of this analysis' purpose was to examine MechaCar's PSI rating on coil spring manufacturing lots to see if there was any statistical difference between any of the lots and the overall population average. This analysis uses R to perform all calculations and data manipulations.

### Linear Regression to Predict MPG
Single measurement per vehicle testing was collected on 50 different MechaCar prototypes. The variables collected were vehicle length, vehicle weight, spoiler angle, ground clearance, whether the vehicle is AWD(all wheel drive) or not, and mpg. A multiple linear regression was run to see which of the other factors have an effect on mpg. The results of this analysis can be seen below.
![Multiple Linear Regression](https://github.com/Beardlow/MechaCar_Statistical_Analysis/blob/main/linear_reg_mpg.png) 
From this analysis, we can see that vehicle length and ground clearance have a positive effect on the mpg of the prototypes. The slope of the model is not zero due to the fact that vehicle length and ground clearance have Estimates of more than one away from zero. This model has an adjusted r squared of .6825 meaning that roughly 68.25% of the change in mpg is accounted for in this model. This model is fairly decent at predicting mpg.

### Summary Statistics on Suspension Coils
PSI measurement data on a three manufacturing lots of MechaCar coil springs were analayzed to see if there were any non concorming lots from a PSI standpoint. The overall summary of PSI from all three lots is below.
![Total Summary](https://github.com/Beardlow/MechaCar_Statistical_Analysis/blob/main/total_summary_df.png)

The summary for each of the lots can be seen below.
![Lot Summary](https://github.com/Beardlow/MechaCar_Statistical_Analysis/blob/main/lot_summary_df.png)
Lot 3 has a variance in PSI of 170, meaning that this lot is noncormant to the PSI variance upper specification of 100. Additional sampling or 100% inspection may be required on Lot 3.

### T-Tests on Suspension Coils
The same data provided for the previous summary statistic analysis was used to perform a t test on all of the lots, and each of the three lots individually, to the population average of 1500 PSI. The t test for all three lots compared to the population average is below.
![Total T Test](https://github.com/Beardlow/MechaCar_Statistical_Analysis/blob/main/t_test_all.png)
The average for all of the lots together is not statistically different than the population mean of 1500. p= .06

The average for Lot 1 is not statistically different than the population average. Results for Lot 1 below.
![Lot 1 T Test](https://github.com/Beardlow/MechaCar_Statistical_Analysis/blob/main/t_test_lot1.png)

The average for Lot 2 is not statistically different than the population average. Results for Lot 2 below.
![Lot 2 T Test](https://github.com/Beardlow/MechaCar_Statistical_Analysis/blob/main/t_test_lot2.png)

There is sufficient evidence to assume that Lot 3's mean is statistically different than the population average of 1500. Results for Lot 3 below.
![Lot 3 T Test](https://github.com/Beardlow/MechaCar_Statistical_Analysis/blob/main/t_test_lot3.png)
