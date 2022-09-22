# Deliverable 1 
setwd("~/OSU_Bootcamp/Analysis_Projects/MechaCar_Statistical_Analysis")
 library(tidyverse)
 MechaCarMPG_DF <- read.csv('MechaCar_mpg.csv')
 lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCarMPG_DF) #generate multiple linear regression model
 summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCarMPG_DF)) #lm summary
 # Deliverable 2
 Susp_DF <- read.csv('Suspension_Coil.csv')
 library(data.table)
 Susp_table <- setDT(Susp_DF)
 total_summary <- Susp_table %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
 lot_summary <- Susp_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
 # Deliverable 3
 t.test(Susp_DF$PSI, mu=1500)
 # Lot 1
 t.test((subset(Susp_DF, Manufacturing_Lot=='Lot1'))$PSI, mu=1500)
 # Lot 2
 t.test((subset(Susp_DF, Manufacturing_Lot=='Lot2'))$PSI, mu=1500)
 # Lot 3