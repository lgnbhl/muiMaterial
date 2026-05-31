test_that("Fade() returns shiny.tag, correct name and value", {
  expect_true(inherits(Fade(), "shiny.tag"))
  expect_equal(react_name(Fade()), "Fade")
  expect_equal(react_props(Fade("Test"))[["children"]], "Test")
})
