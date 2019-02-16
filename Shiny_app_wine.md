Predict White Wine Quality with Machine Learning
========================================================
author: MML
date: 16.02.2019
autosize: true

Overview
========================================================

This R Presentation contains the documentation for the Shiny Application that predicts white wine quality based on different physicochemical tests:

* alcohol (% by volume)
* density (g / cm^3)
* chlorides (sodium chloride - g / dm^3
* volatile acidity (acetic acid - g / dm^3).

The Shiny Application can be found at the following [web page] (). This Application uses Machine Learning tools (Random Forest) and UCI Wine Quality Dataset to predict white wine quality and returns a predicted value (3 - bad quality, 6 - excellent quality).

Data set
========================================================
The UCI Wine Quality Dataset can be found at the following [web page](https://archive.ics.uci.edu/ml/datasets/wine+quality)


```
'data.frame':	4898 obs. of  12 variables:
 $ fixed.acidity       : num  7 6.3 8.1 7.2 7.2 8.1 6.2 7 6.3 8.1 ...
 $ volatile.acidity    : num  0.27 0.3 0.28 0.23 0.23 0.28 0.32 0.27 0.3 0.22 ...
 $ citric.acid         : num  0.36 0.34 0.4 0.32 0.32 0.4 0.16 0.36 0.34 0.43 ...
 $ residual.sugar      : num  20.7 1.6 6.9 8.5 8.5 6.9 7 20.7 1.6 1.5 ...
 $ chlorides           : num  0.045 0.049 0.05 0.058 0.058 0.05 0.045 0.045 0.049 0.044 ...
 $ free.sulfur.dioxide : num  45 14 30 47 47 30 30 45 14 28 ...
 $ total.sulfur.dioxide: num  170 132 97 186 186 97 136 170 132 129 ...
 $ density             : num  1.001 0.994 0.995 0.996 0.996 ...
 $ pH                  : num  3 3.3 3.26 3.19 3.19 3.26 3.18 3 3.3 3.22 ...
 $ sulphates           : num  0.45 0.49 0.44 0.4 0.4 0.44 0.47 0.45 0.49 0.45 ...
 $ alcohol             : num  8.8 9.5 10.1 9.9 9.9 10.1 9.6 8.8 9.5 11 ...
 $ quality             : int  6 6 6 6 6 6 6 6 6 6 ...
```
Random Forest
========================================================
* Random decision forests represent a type of learning methods used extensively for classification and regression purposes.

* They work by constructing a multiple number of decision trees and merge them to create a prediction that is more acurate.

* In the case of white wine data, the quality is represented as a qualitative trait with seven different categories. Wines of low quality have quality value of three while wines of excellent quality have the highest value of nine.

* Random Forest methods are particularly suitable for classification problems such as these.


Shiny files
========================================================

The App is build using the Shiny package. The source code is contained within 2 files:
- `ui.R`
- `server.R`

Both files can be found here: [GitHub](https://github.com/Markomlazic/Shiny_wine). The Aplication can be found here: [Wine Quality Prediction](https://markomml.shinyapps.io/Shiny_APP_Wine/).
