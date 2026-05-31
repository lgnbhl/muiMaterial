test_that("CardActions() returns shiny.tag, correct name and value", {
  expect_true(inherits(CardActions(), "shiny.tag"))
  expect_equal(react_name(CardActions()), "CardActions")
  expect_equal(react_props(CardActions("Test"))[["children"]], "Test")
})
