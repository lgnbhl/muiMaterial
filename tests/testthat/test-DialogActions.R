test_that("DialogActions() returns shiny.tag, correct name and value", {
  expect_true(inherits(DialogActions(), "shiny.tag"))
  expect_equal(react_name(DialogActions()), "DialogActions")
  expect_equal(react_props(DialogActions("Test"))[["children"]], "Test")
})
