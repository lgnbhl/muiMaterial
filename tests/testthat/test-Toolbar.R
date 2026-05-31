test_that("Toolbar() returns shiny.tag, correct name and value", {
  expect_true(inherits(Toolbar(), "shiny.tag"))
  expect_equal(react_name(Toolbar()), "Toolbar")
  expect_equal(react_props(Toolbar("Test"))[["children"]], "Test")
})
