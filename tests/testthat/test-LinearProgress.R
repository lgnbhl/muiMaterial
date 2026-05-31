test_that("LinearProgress() returns shiny.tag, correct name and value", {
  expect_true(inherits(LinearProgress(), "shiny.tag"))
  expect_equal(react_name(LinearProgress()), "LinearProgress")
  expect_equal(react_props(LinearProgress("Test"))[["children"]], "Test")
})
