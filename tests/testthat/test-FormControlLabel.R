test_that("FormControlLabel() returns shiny.tag, correct name and value", {
  expect_true(inherits(FormControlLabel(), "shiny.tag"))
  expect_equal(react_name(FormControlLabel()), "FormControlLabel")
  expect_equal(react_props(FormControlLabel("Test"))[["children"]], "Test")
})
