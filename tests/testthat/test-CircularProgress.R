test_that("CircularProgress() returns shiny.tag, correct name and value", {
  expect_true(inherits(CircularProgress(), "shiny.tag"))
  expect_equal(react_name(CircularProgress()), "CircularProgress")
  expect_equal(react_props(CircularProgress("Test"))[["children"]], "Test")
})
