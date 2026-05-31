test_that("Grow() returns shiny.tag, correct name and value", {
  expect_true(inherits(Grow(), "shiny.tag"))
  expect_equal(react_name(Grow()), "Grow")
  expect_equal(react_props(Grow("Test"))[["children"]], "Test")
})
