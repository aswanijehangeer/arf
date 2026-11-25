
## ARF Explorer — Interactive Shiny Application

This personal fork extends the original `arf` package with
**ARF Explorer**, an interactive Shiny application for exploring
synthetic tabular data generation and statistical evaluation using
adversarial random forests.

The application provides a graphical interface for experimenting
with ARF, understanding synthetic data generation, and comparing
the statistical properties of real and synthetic datasets.

### Application preview

<p align="center">
  <img src="man/figures/arf-explorer.png"
       alt="ARF Explorer Shiny application"
       width="100%">
</p>

### Installation and launch

Install this extended version of `arf` from GitHub:

```r
devtools::install_github("aswanijehangeer/arf")
```

Install the optional application dependencies:

```r
install.packages(c("shiny", "writexl"))
```

Launch the application directly from R:

```r
arf::run_explorer()
```

### Current features

- **Data exploration:** Explore numerical and categorical variables
  using built-in example datasets.
- **Synthetic data generation:** Generate synthetic data using ARF
  with configurable model parameters and reproducible random seeds.
- **Training and holdout separation:** Evaluate synthetic data
  against unseen real observations.
- **Baseline comparisons:** Compare ARF-generated data with
  independent-column sampling and real training data.
- **Statistical evaluation:** Assess marginal distributions and
  numerical dependencies.
- **Interactive visualisations:** Compare distributions, empirical
  cumulative distribution functions and scatter plots.
- **Data export:** Download synthetic data as CSV and complete
  experiment results as an Excel workbook.

### Evaluation metrics

| Evaluation level | Metric | Variable type |
|---|---|---|
| Univariate | Kolmogorov–Smirnov distance | Numerical |
| Univariate | Wasserstein distance | Numerical |
| Univariate | Total Variation distance | Categorical |
| Bivariate | Pearson correlation difference | Numerical pairs |

The current evaluation focuses on statistical fidelity. Predictive
utility, privacy assessment, mixed-type dependencies and
multivariate evaluation are potential future extensions.

### Experiment export

The application supports exporting a complete experiment as an
Excel workbook containing four worksheets:

- Synthetic data
- Univariate evaluation
- Dependency evaluation
- Experiment settings

### Development status

ARF Explorer is an experimental and educational extension maintained
independently in this personal fork. It is intended to support
interactive learning and experimentation with synthetic data
generation and evaluation.

The original ARF generation and density estimation algorithms
remain unchanged.

This application is not currently part of the official ARF package
or its CRAN release.
