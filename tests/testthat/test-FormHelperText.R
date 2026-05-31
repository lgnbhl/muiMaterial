test_that("FormHelperText() returns shiny.tag, correct name and value", {
  expect_true(inherits(FormHelperText(), "shiny.tag"))
  expect_equal(react_name(FormHelperText()), "FormHelperText")
  expect_equal(react_props(FormHelperText("Test"))[["children"]], "Test")
})
