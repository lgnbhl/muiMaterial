test_that("Masonry() returns shiny.tag, correct name and value", {
  expect_true(inherits(Masonry(), "shiny.tag"))
  expect_equal(react_name(Masonry()), "Masonry")
  expect_equal(react_props(Masonry("Test"))[["children"]], "Test")
})
