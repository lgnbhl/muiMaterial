test_that("FormGroup() returns shiny.tag, correct name and value", {
  expect_true(inherits(FormGroup(), "shiny.tag"))
  expect_equal(react_name(FormGroup()), "FormGroup")
  expect_equal(react_props(FormGroup("Test"))[["children"]], "Test")
})
