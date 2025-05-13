# Data-Viz-Tax-Filling-Season
Filling Season Trends between Years 2015 and 2025
Each year, the IRS provides weekly cumulative statistics for returns filed, returns processed, and refunds issued during the filing season and then at certain points after the filing season. The statistics compare totals as of Friday with the corresponding Friday in the prior year.

Source: https://www.irs.gov/newsroom/filing-season-statistics-by-year
```{r tax fill}

library(tidyverse)

library(skimr)

library(janitor)

library(readr)

library(dplyr)

library(ggplot2)

tax_fill <- read_csv("/Users/angelabello/Documents/UniversityofChicago/DataStorytelling/DataAnalysis/R/Project_TaxFill/filing-season-statistics-2015-to-2025.csv")
glimpse(tax_fill)
