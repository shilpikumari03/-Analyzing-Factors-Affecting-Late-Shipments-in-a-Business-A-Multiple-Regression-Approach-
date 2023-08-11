# -Analyzing-Factors-Affecting-Late-Shipments-in-a-Business-A-Multiple-Regression-Approach

This repository contains the final project for the course "Analytical Methods for Business" (QMB6304.003F22). The project focuses on conducting multiple regression analyses to analyze factors affecting late order shipments in a company.

## Table of Contents

- [Introduction](#introduction)
- [Dataset](#dataset)
- [Regression Analysis](#regression-analysis)
- [Model Comparison](#model-comparison)
- [Assumptions Check](#assumptions-check)
- [Interpretation of Coefficients](#interpretation-of-coefficients)
- [Prediction Confidence Intervals](#prediction-confidence-intervals)
- [Getting Started](#getting-started)
- [License](#license)

## Introduction

In this project, we aim to analyze the factors contributing to late order shipments within a company. By utilizing multiple regression models, we investigate the relationship between various independent variables such as the number of employees absent, the total number of orders shipped, and the carrier used for shipments. The project assesses the impact of these variables on the dependent variable, which is the number of orders that arrived late.

## Dataset

The dataset used in this project comprises self-gathered data on 120 samples of days when shipments were ordered and arrived late. The dataset includes the following variables:

- `Late_ship`: Number of orders shipped on a given day that arrived late
- `Emp_absent`: Number of employees on leave on the given day
- `Total_ship`: Total number of orders shipped on the given day
- `Ship_carrier`: The predominant carrier on the given day (coded as 0 for FedEx and 1 for UPS)

## Regression Analysis

The project involves the implementation of various regression models to understand the relationships between the dependent variable (`Late_ship`) and independent variables (`Emp_absent`, `Total_ship`, `Ship_carrier`). The following model combinations were explored:

- Simple Regression models
- Multiple Regression models
- Interaction term model
- Squared terms model

## Model Comparison

A comparison of the different regression models was conducted to determine the best-fitting model. The `stargazer` library was utilized to present the results. The model with the highest adjusted R-squared value, indicating the best explanatory power, was identified as the most suitable.

## Assumptions Check

Assumptions of linearity, independence of errors, normality of errors, and equality of error variances were assessed for the chosen model. Graphical representations were used to evaluate the validity of these assumptions.

## Interpretation of Coefficients

The coefficients of the regression models were interpreted to understand the impact of each independent variable on the dependent variable. The sign and significance of the coefficients were analyzed to determine the direction and strength of relationships.

## Prediction Confidence Intervals

Prediction confidence intervals were calculated for two types of scenarios based on the chosen independent variable values. These intervals provide insights into the range of expected late order shipments given certain conditions.

## Getting Started

To explore the project code and findings, follow these steps:

1. Clone this repository: `git clone https://github.com/your-username/multiple-regression-project.git`
2. Navigate to the project directory: `cd multiple-regression-project`
3. Open and explore the project files using your preferred coding environment or text editor.

## License

This project is licensed under the [MIT License](LICENSE).
