# MechaCar_Statistical_Analysis

## Overview
The primary analyst at AutosRUs, Jeremy, was tasked with analyzing the production data for a new car prototype, MechaCar.  The prototype is suffering from production issues, which are hindering the manufacturing team's progress.  Using the provided production data, I was tasked with discovering what variables affect the prototype's MPG and whether the suspension coils were being produced consistently within and between car lots.

## Results

### Linear Regression to Predict MPG
To determine which variables have the greatest effect on MPG, I performed a linear regression of MPG against all provided design specifications.  While assuming a significance threshold of 0.05, the following was determined from **Figure 1**:
-	The vehicle length and ground clearance variables were found to significantly predict MPG values, as did the intercept (p < 0.0001 in all cases).  The vehicle weight was trending significant (p = 0.0776).
-	The null hypothesis that the model's slope is 0 was rejected, because the p value for the overall model was much less than 0.05 (p = 5.35e-11).
-	The linear model predicted variance in MPG quite well, because the R-squared value suggest a strong correlation between the include variables and MPG (R-squared = 0.71).  However, the model is overfit, because it includes variables that were found to not significantly contribute to the variance in MPG.

![linear-regression-output](resources/mpg_linear_model.png)

**Figure 1:** Screenshot of the linear regression output

### Summary Statistics on Suspension
To determine whether the weight capacities of cars across lots is consistent, I looked at the mean, median, variance, and standard deviation of pounds per square inch (PSI) for all lots combined and each lot individually.  The design specifications dictate that the variance for the suspension coils must not exceed 100 PSI.  Given that specification, the following was determined:
-	The specifications for consistency were met across all lots combined (**Table 1**) and for lots 1 and 2 individually (**Table 2**).  However, Lot 3 has a variance of 170 PSI, and therefore failed the consistency specification (**Table 2**).

**Table 1:** Basic statistics for all cars across the three lots

![total-stats-output](resources/total_summary.png)

**Table 2:** Basic statistics for all cars in each lot

![by-lot-stats-output](resources/lot_summary.png)

### T-Tests on Suspension Coils
To determine whether any of the lots have a significantly different carrying capacity from the expected population mean of 1500 PSI, I performed a series of t-tests.  While assuming a significance threshold of 0.05, the following was determined:
-	There is no significant difference between the average PSI the suspension coil can support for all lots, or lots 1 and 2 individually and the population (P > 0.05 in all cases, **Figs 2-4**).  There is a significant difference between lot 3 and the population (p < 0.05, **Fig 5**).

![total-ttest](resources/total_ttest.png)

**Figure 2:** T-test for all lots combined versus the expected population mean of 1500

![lot1-ttest](resources/lot1_ttest.png)

**Figure 3:** T-test for lot 1 versus the expected population mean of 1500

![lot2-ttest](resources/lot2_ttest.png)

**Figure 4:** T-test lot 2 versus the expected population mean of 1500

![lot3-ttest](resources/lot3_ttest.png)

**Figure 5:** T-test for lot 3 versus the expected population mean of 1500


## Future Work
### Study Design: MechaCar vs Competition
To determine how MechaCar performs relative to other cars, we should first test the following metrics for the new prototype and the cars most likely to be in direct competition with it from other companies:

1)	highway fuel efficiency
2)	safety rating

The hypotheses for these metrics are:
1)	Null: MechaCar is not more fuel efficient than its competitors.  Alternative (greater): Mechacar is more fuel efficient than its competitors.
2)	Null: MechaCar does not have a high safety rating than its competitors.  Alternative (greater): Mechacar has a higher safety rating than its competitors.

To run these tests, the highway fuel efficiency and safety rating should be measured for at least 10 MechaCars.  This will allow us to calculate MechaCar’s average performance.  The reported fuel efficiency and safety rating can then be looked up for at least 10 (and ideally all) car models that would be in direct competition with MechaCar to estimate the population averages for these statistics.  Using a one-sided, one-sample T-test, MechaCar’s mean highway fuel efficiency and mean safety rating can be compared to the average metrics for the competitors.  This test would be used, because a one-samepl t-test is used to compare a sample mean to a population mean, and because we are looking for a directional difference in the alternative hypothesis (that MechaCar performs better) it would be the one-sided variant of a t-test.  Overall, this would be a cost- and time-effective analysis that would give the company a claim about how MechaCar performs in highway fuel efficiency and safety relative to an average car of its class.

If it is determined that MechaCar performs above the population average in these tests, and its mean is much greater than the population average, it would be valuable to follow up this analysis fast analysis with a most costly one, where we would collect highway fuel efficiency and safety rating data on the top two or three competitor car models.  We could then use an ANOVA to examine whether MechaCar performs differently than its top competitors (Null: there are no differences, Alt: there are differences).   If this is the case, a series of post-hoc tests could be run to test whether MechaCar performed better than each competitor (Null: MechaCar does not perform differently, Alt: It does, use the mean values to determine the direction of the differences).  If MechaCar does outperform its top competitor, this would give the company a much more valuable claim that it performs the best in its class for the tested metrics.

