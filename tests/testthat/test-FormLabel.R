test_that("FormLabel() returns shiny.tag, correct name and value", {
  expect_true(inherits(FormLabel(), "shiny.tag"))
  expect_equal(react_name(FormLabel()), "FormLabel")
  expect_equal(react_props(FormLabel("Test"))[["children"]], "Test")
})
