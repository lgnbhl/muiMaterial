test_that("CardHeader() returns shiny.tag, correct name and value", {
  expect_true(inherits(CardHeader(), "shiny.tag"))
  expect_equal(react_name(CardHeader()), "CardHeader")
  expect_equal(react_props(CardHeader("Test"))[["children"]], "Test")
})
