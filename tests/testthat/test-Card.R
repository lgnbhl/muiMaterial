test_that("Card() returns shiny.tag, correct name and value", {
  expect_true(inherits(Card(), "shiny.tag"))
  expect_equal(react_name(Card()), "Card")
  expect_equal(react_props(Card("Test"))[["children"]], "Test")
})
