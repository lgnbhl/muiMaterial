test_that("Snackbar() returns shiny.tag, correct name and value", {
  expect_true(inherits(Snackbar(), "shiny.tag"))
  expect_equal(react_name(Snackbar()), "Snackbar")
  expect_equal(react_props(Snackbar("Test"))[["children"]], "Test")
})
