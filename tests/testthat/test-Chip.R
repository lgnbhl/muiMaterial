test_that("Chip() returns shiny.tag, correct name and value", {
  expect_true(inherits(Chip(), "shiny.tag"))
  expect_equal(react_name(Chip()), "Chip")
  expect_equal(react_props(Chip("Test"))[["children"]], "Test")
})
