# This script was written in R v4.1.0
# expects packages tidyverse and jsonlite to be installs
# the above packages rely on rtools40

library(dplyr)

# Deliverable 1:
mechaCarData <- read.csv('MechaCar_mpg.csv')

mpgModel <- lm(mpg ~ vehicle_length + vehicle_weight +
                 spoiler_angle + ground_clearance + AWD, mechaCarData)

summary(mpgModel)


# Deliverable 2
coilData <- read.csv('Suspension_Coil.csv')

total_summary <- summarize(coilData, Mean = mean(PSI),
                           Median = median(PSI),
                           Variance = var(PSI),
                           SD = sd(PSI))
lot_summary <- coilData %>% group_by(Manufacturing_Lot) %>%
  summarize(Mean = mean(PSI),
            Median = median(PSI),
            Variance = var(PSI),
            SD = sd(PSI), .groups = 'keep')
