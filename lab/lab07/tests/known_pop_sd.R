library(testthat)

test_metadata = "
cases:
- hidden: false
  name: known_pop_sd_a
  points: 0.5
- hidden: false
  name: known_pop_sd_b
  points: 0.5
name: known_pop_sd

"

test_that("known_pop_sd_a", {
  expect_true(class(known_pop_sd) == 'numeric')
  print("Checking: known population sd is numeric")
})

test_that("known_pop_sd_b", {
  expect_true(all.equal(known_pop_sd, 2.786314, tol = 0.001))
  print("Checking: known population sd is the correct value")
})
