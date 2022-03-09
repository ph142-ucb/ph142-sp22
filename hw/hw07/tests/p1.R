library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p1a
  points: 0.5
- hidden: false
  name: p1b
  points: 0.5
name: p1

"

test_that("p1a", {
  expect_true(all.equal(ci_99[1], 85.592, tol = 0.001))
  print("Checking: first value of ci_99")
})

test_that("p1b", {
  expect_true(all.equal(ci_99[2], 96.608, tol = 0.001))
  print("Checking: second value of ci_99")
})
