test_that("Rating() returns shiny.tag, correct name and value", {
  expect_true(inherits(Rating(), "shiny.tag"))
  expect_equal(react_name(Rating()), "Rating")
  expect_equal(react_props(Rating("Test"))[["children"]], "Test")
})
