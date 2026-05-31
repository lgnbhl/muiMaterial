test_that("Paper() returns shiny.tag, correct name and value", {
  expect_true(inherits(Paper(), "shiny.tag"))
  expect_equal(react_name(Paper()), "Paper")
  expect_equal(react_props(Paper("Test"))[["children"]], "Test")
})
