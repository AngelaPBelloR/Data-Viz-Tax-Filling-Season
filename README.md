# Data Viz Tax Filing Season
Filling Season Trends between Years 2015 and 2025
Each year, the IRS provides weekly cumulative statistics for returns filed, returns processed, and refunds issued during the filing season and then at certain points after the filing season. The statistics compare totals as of Friday with the corresponding Friday in the prior year.

Source: https://www.irs.gov/newsroom/filing-season-statistics-by-year
```{r tax fill}
glimpse(tax_fill)
```

Note that make data time converts the columns year, months, and day into a variable x = datetime

```{r tax fill}
# make datetime
mutate(datetime = make_datetime(year, month, day))%>%
ggplot() + 
  geom_point(mapping = aes(x=datetime, y=total_returns_received, colour = year, size=total_returns_received)) + 
  labs(title="Filling Season Tax: Filled Date vs. Total Returns Received ", subtitle="Years 2015-2025", caption="The statistics compare totals as of the first Friday of the year compared with the corresponding Friday in the prior year.") 

```
Note that utilizing a single timeline year, here simultaneously shows years from 2015 to 2025
```{r tax fill}
tax_fill%>%
# make datetime: force unique year
  mutate(datetime = make_datetime(2015, month, day))%>%
  ggplot() + 
  geom_line(aes(x = datetime, y = total_returns_received, colour = factor(year))) + 
  labs(title = "Total Returns Received", colour = "Year")
```
