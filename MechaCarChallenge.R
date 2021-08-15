# This script was written in R v4.1.0
# expects packages tidyverse and jsonlite to be installs
# the above packages rely on rtools40

library(dplyr)
mechaCarData <- read.csv('MechaCar_mpg.csv')

mpgModel <- lm(mpg ~ vehicle_length + vehicle_weight +
                 spoiler_angle + ground_clearance + AWD, mechaCarData)
