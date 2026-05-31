test_that("Fab() returns shiny.tag, correct name and value", {
  expect_true(inherits(Fab(), "shiny.tag"))
  expect_equal(react_name(Fab()), "Fab")
  expect_equal(react_props(Fab("Test"))[["children"]], "Test")
})
