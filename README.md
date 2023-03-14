
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ifastDummies

This package improves the `fastDummies` package (you can check out their
original package [here](https://github.com/jacobkap/fastDummies/)) by a
tiny but – to me – significant feature. Using the `sep` argument, you
can now directly specify how column names and unique values should be
separated.

## Installation

You can install the development version of ifastDummies from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("Solaire-patch/ifastDummies")
```

## Example

``` r
library(ifastDummies)

df <- data.frame(city = c("SF", "SF", "NYC"),
                 year = c(1990, 2000, 1990),
                 crime = 1:3)


i_dummy_cols(df, sep = "_-_")
#>   city year crime city_-_NYC city_-_SF
#> 1   SF 1990     1          0         1
#> 2   SF 2000     2          0         1
#> 3  NYC 1990     3          1         0
```
