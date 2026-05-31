test_that("CardContent() returns shiny.tag, correct name and value", {
  expect_true(inherits(CardContent(), "shiny.tag"))
  expect_equal(react_name(CardContent()), "CardContent")
  expect_equal(react_props(CardContent("Test"))[["children"]], "Test")
})
