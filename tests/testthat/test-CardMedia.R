test_that("CardMedia() returns shiny.tag, correct name and value", {
  expect_true(inherits(CardMedia(), "shiny.tag"))
  expect_equal(react_name(CardMedia()), "CardMedia")
  expect_equal(react_props(CardMedia("Test"))[["children"]], "Test")
})
