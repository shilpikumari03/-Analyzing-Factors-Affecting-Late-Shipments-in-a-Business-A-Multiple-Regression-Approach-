
# Analyzing Factors Affecting Late Shipments in a Business - A Multiple Regression Approach

This repository contains the code and documentation for the final project of the course "Analytical Methods for Business" (QMB6304.003F22). The project focuses on analyzing the factors that affect late shipments in a business using a multiple regression approach.

## Table of Contents

- [Description](#description)
- [Dataset](#dataset)
- [Regression Models](#regression-models)
- [Choosing the Best Model](#choosing-the-best-model)
- [Assessment of Assumptions](#assessment-of-assumptions)
- [Interpretation of Coefficients](#interpretation-of-coefficients)
- [Prediction Confidence Intervals](#prediction-confidence-intervals)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Description

This project aims to analyze the factors contributing to late shipments in a business context using a multiple regression approach. The main goal is to determine which factors have a significant impact on the number of late shipments and to build a regression model that best explains this relationship.

## Dataset

The dataset used in this project is self-gathered and contains information on a company's order shipment details. The dataset includes the following variables:

- `Late_ship`: Number of orders shipped on a given day that arrived late to customers.
- `Emp_absent`: Number of employees on leave on the given day.
- `Total_ship`: Total number of orders shipped on the given day.
- `Ship_carrier`: The predominant carrier on the given day (FedEx or UPS).

## Regression Models

The project employs various regression models to analyze the relationship between the dependent variable (`Late_ship`) and independent variables (`Emp_absent`, `Total_ship`, and `Ship_carrier`). The models include simple regression, multiple regression, interaction terms, and squared terms.

## Choosing the Best Model

The best-fit model is determined based on R-squared values, adjusted R-squared values, and p-values. The model that provides the best explanation for the dependent variable is selected.

## Assessment of Assumptions

The project assesses whether the regression assumptions of linearity, independence of errors, normality of errors, and equality of error variances are met. Graphical interpretations are provided for each assumption.

## Interpretation of Coefficients

The coefficients of the regression models are interpreted to understand the relationships between independent and dependent variables. Positive and negative coefficients indicate the direction and magnitude of the effects.

## Prediction Confidence Intervals

Confidence intervals for predictions are calculated to estimate the range within which the predicted values of late shipments lie for different values of the independent variables.

## Usage

1. Open and explore the provided R script files to review the code, analysis, and visualizations.

2. Modify the code and variables as needed for your analysis or dataset.

3. To run the R code in this project, you will need to have R and the following packages installed: rio.
4.  You can install these packages using the following commands in R:
- install.packages("rio")
After installing the required package, you can simply run the code in the QMB Multiple Regression. R file to perform the data analysis, visualization, and model-building steps.

## Contributing

Contributions to this project are welcome. You can contribute by:

- Forking the repository
- Making necessary changes or improvements
- Creating a pull request to submit your changes for review

## License

This project is licensed under the [MIT License](LICENSE).

