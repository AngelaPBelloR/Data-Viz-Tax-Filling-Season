options(repos = c(CRAN = "https://cloud.r-project.org"))
install.packages("languageserver")
install.packages("httpgd")
install.packages("tidyverse")
install.packages("skimr")
install.packages("janitor")
install.packages("readr")
library(tidyverse)
library(skimr)
library(janitor)
library(readr)

tax_fill <- read_csv("/Users/angelabello/Documents/UniversityofChicago/DataStorytelling/DataAnalysis/R/Project_TaxFill/filing-season-statistics-2015-to-2025.csv")
glimpse(tax_fill)

install.packages("dplyr")
library(dplyr)
install.packages("lubridate")
library(lubridate)
install.packages("tidyr")
library(tidyr)
install.packages("ggplot2")
library(ggplot2)

tax_fill%>%
  # make datetime
  mutate(datetime = make_datetime(year, month, day))%>%
ggplot() + 
  geom_point(mapping = aes(x=datetime, y=total_returns_received, colour = year, size=total_returns_received)) + 
  labs(title="Filling Season Tax: Filled Date vs. Total Returns Received ", subtitle="Years 2015-2025", caption="The statistics compare totals as of first Friday of the year compared with the corresponding Friday in the prior year.") 


