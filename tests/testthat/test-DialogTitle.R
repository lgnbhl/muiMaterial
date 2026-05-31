test_that("DialogTitle() returns shiny.tag, correct name and value", {
  expect_true(inherits(DialogTitle(), "shiny.tag"))
  expect_equal(react_name(DialogTitle()), "DialogTitle")
  expect_equal(react_props(DialogTitle("Test"))[["children"]], "Test")
})
