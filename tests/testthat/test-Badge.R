test_that("Badge() returns shiny.tag, correct name and value", {
  expect_true(inherits(Badge(), "shiny.tag"))
  expect_equal(react_name(Badge()), "Badge")
  expect_equal(react_props(Badge("Test"))[["children"]], "Test")
})
