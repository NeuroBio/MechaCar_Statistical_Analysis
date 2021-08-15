# MechaCar_Statistical_Analysis

## Results

### Linear Regression to Predict MPG
To determine which variables have the greatest effect on MPG, I performed a linear regression of MPG against all provided design specifications.  The following points were determined:
-	The vehicle length and ground clearance variables were found to significantly predict MPG values, as did the intercept (p < 0.0001 in all cases).  The vehicle weight was trending significant (p = 0.0776).
-	The null hypothesis that the model's slope is 0 was rejected, because the p value for the overall model was much less than 0.05 (p = 5.35e-11).
-	The linear model predicted variance in MPG quite well, because the R-squared value suggest a strong correlation between the include variables and MPG (R-squared = 0.71).  However, the model is overfit, because it includes variables that were found to not significantly contribute to the variance in MPG.

![linear-regression-output](resources/mpg_linear_model.png)

**Figure 1:** Screenshot of the linear regression output
