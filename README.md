# Time-Series
Time series forecasting to predict Sales

Predicted Sales for Coca-Cola based on historical sales data. (used a real data set)
 
My intuition: Coca-Cola is a beverage that is affected by seasons, in summer people drink more coke. Hence, introduced time and quarter predictor variables to account for seasonal changes (seasonality).
Built an exponential multiplicative model. Obtained the best fit, adjusted for time trends and seasonality (i.e. change in year & quarter).
Provided economic interpretations for all co-efficients in the model to make business sense.

( Refer Regression table file)

b1: 0.023603
On average, every quarter, sales increases by 2.3% adjusted for seasonality.
b2: -0.082226
On average, the sales in Q1 when compared to Q4, decreases by 8.2% adjusted for time trend.
Similar interpretations for b3 & b4.

