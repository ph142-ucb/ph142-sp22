library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p4a
  points: 0.5
- hidden: false
  name: p4b
  points: 0.5
name: p4

"

test_that("p4a", {
  expect_true(all.equal(ci_95[1], 86.909, tol = 0.001))
  print("Checking: first value of ci_95")
})

test_that("p4b", {
  expect_true(all.equal(ci_95[2], 95.291, tol = 0.001))
  print("Checking: second value of ci_95")
})
