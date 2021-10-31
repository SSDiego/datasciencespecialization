| Here's an example of typical lattice plot call, xyplot(y ~ x | f * g, data). The f and g
| represent the optional conditioning variables. The * represents interaction between them.
| Remember when we said that lattice is good for plotting multivariate data? That's where
| these conditioning variables come into play.

| Recall the airquality data we've used before. We've loaded it again for you. To remind
| yourself what it looks like run the R command head with airquality as an argument to see
| what the data looks like.

head(airquality)
  Ozone Solar.R Wind Temp Month Day
1    41     190  7.4   67     5   1
2    36     118  8.0   72     5   2
3    12     149 12.6   74     5   3
4    18     313 11.5   62     5   4
5    NA      NA 14.3   56     5   5
6    28      NA 14.9   66     5   6

| Now try running xyplot with the formula Ozone~Wind as the first argument and the second
| argument data set equal to airquality.

xyplot(y ~ x | Ozone * Wind, airquality)

teste