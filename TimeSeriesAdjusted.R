library(tidyverse)
install.packages("skimr")
library(skimr)
install.packages("janitor")
library(janitor)
install.packages("readr")
library(readr)
install.packages("dplyr")
library(dplyr)
install.packages("ggplot2")
library(ggplot2)

tax_fill <- read_csv("/Users/angelabello/Documents/UniversityofChicago/DataStorytelling/DataAnalysis/R/Project_TaxFill/filing-season-statistics-2015-to-2025.csv")
glimpse(tax_fill)

tax_fill%>%
# make datetime: force unique year
  mutate(datetime = make_datetime(2015, month, day))%>%
  ggplot() + 
  geom_line(aes(x = datetime, y = total_returns_received, colour = factor(year))) + 
  labs(title = "Total Returns Received", colour = "Year")

