test_that("SnackbarContent() returns shiny.tag, correct name and value", {
  expect_true(inherits(SnackbarContent(), "shiny.tag"))
  expect_equal(react_name(SnackbarContent()), "SnackbarContent")
  expect_equal(react_props(SnackbarContent("Test"))[["children"]], "Test")
})
