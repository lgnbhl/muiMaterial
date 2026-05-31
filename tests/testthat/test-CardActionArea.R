test_that("CardActionArea() returns shiny.tag, correct name and value", {
  expect_true(inherits(CardActionArea(), "shiny.tag"))
  expect_equal(react_name(CardActionArea()), "CardActionArea")
  expect_equal(react_props(CardActionArea("Test"))[["children"]], "Test")
})
