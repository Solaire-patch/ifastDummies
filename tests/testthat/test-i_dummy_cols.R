test_that("separator works", {
  expect_equal(
    names(
      i_dummy_cols(
        data.frame(
          city = c("SF", "SF", "NYC"), year = c(1990, 2000, 1990), crime = 1:3),
        sep = "_-_"
      )
    ),
    c("city", "year", "crime", "city_-_NYC", "city_-_SF")
  )
})
