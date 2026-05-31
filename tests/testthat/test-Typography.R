test_that("Typography() returns shiny.tag, correct name and value", {
  expect_true(inherits(Typography(), "shiny.tag"))
  expect_equal(react_name(Typography()), "Typography")
  expect_equal(react_props(Typography("Test"))[["children"]], "Test")
})
