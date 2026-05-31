test_that("FormControl() returns shiny.tag, correct name and value", {
  expect_true(inherits(FormControl(), "shiny.tag"))
  expect_equal(react_name(FormControl()), "FormControl")
  expect_equal(react_props(FormControl("Test"))[["children"]], "Test")
})
