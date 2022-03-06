library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p2a
  points: 0.25
- hidden: false
  name: p2b
  points: 0.25
- hidden: false
  name: p2c
  points: 0.25
- hidden: false
  name: p2d
  points: 0.25
name: p2

"

test_that("p2a", {
  expect_true("ggplot" %in% class(p2))
  print("Checking: p2 is a ggplot")
})

test_that("p2b", {
  expect_true(identical(p2$data, alameda_pop))
  print("Checking: Using alameda_pop data")
})

test_that("p2c", {
  expect_true(rlang::quo_get_expr(p2$mapping$x) == "height")
  print("Checking: height is on the x-axis")
})

test_that("p2d", {
  expect_true("GeomBar" %in% class(p2$layers[[1]]$geom))
  print("Checking: Made a histogram")
})
