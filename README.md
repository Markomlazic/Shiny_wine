# Shiny_wine

Overview

This file contains the documentation for the Shiny Application that predicts white wine quality based on different physicochemical tests:

* alcohol (% by volume)
* density (g / cm^3)
* chlorides (sodium chloride - g / dm^3
* volatile acidity (acetic acid - g / dm^3).

The Shiny Application can be found at the following [web page] (). This Application uses Machine Learning tools (Random Forest) and UCI Wine Quality Dataset to predict white wine quality and returns a predicted wine quality value (from 3 (bad) to 6 (excellent)).

Data set

The UCI Wine Quality Dataset can be found at the following [web page](https://archive.ics.uci.edu/ml/machine-learning-databases/wine-quality/winequality-white.csv)

```{r, echo = FALSE}
white.url <- "https://archive.ics.uci.edu/ml/machine-learning-databases/wine-quality/winequality-white.csv"
white.raw <- read.csv(white.url, header = TRUE, sep = ";")
head(white.raw)
```
Random Forest

* Random decision forests represent a type of learning methods used extensively for classification and regression purposes.
* They work by constructing a multiple number of decision trees and merge them to create a prediction that is more acurate.
* In the case of white wine data, the quality is represented as a qualitative trait with seven different categories. Wines of low quality have quality value of three while wines of excellent quality have the highest value of nine.
* Random Forest methods are particularly suitable for classification problems such as these.


Shiny files

The App is build using the Shiny package. The source code is contained within 2 files:
- `ui.R`
- `server.R`

Both files can be found here: [GitHub](https://github.com/Markomlazic/Shiny_wine)


