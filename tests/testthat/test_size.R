# This script tests the size() function

context("testing size")
# library(testthat)

context("testing size")

# input: a data frame
toy_data <- data.frame("letters" = c("a", "b", "c", "d"),
                       "numbers" = seq(1, 4),
                       "booleans" = c(TRUE, FALSE, FALSE, TRUE)
                       stringsAsFactors = FALSE)

test_that("input to size is a dataframe", {
  expect_is(toy_data, "data.frame")
})

test_that("in case the input is not a dataframe", {
  expect_error(size(matrix(1:9, nrow = 4, ncol = 3)))
})

test_that("size returns an object of type data.frame", {
  expect_is(size(toy_data), "data.frame")
})

test_that("size returns a dataframe of size 1 x 3", {
  expect_equal(nrow(size(toy_data)), 1)
  expect_equal(ncol(size(toy_data)), 3)
})

test_that("outputs correct data types", {
  expect_is(size(toy_data)$rows, "integer")
  expect_is(size(toy_data)$columns, "integer")
  expect_is(size(toy_data)$size_in_memory, "numeric")
})
