test_that("Slide() returns shiny.tag, correct name and value", {
  expect_true(inherits(Slide(), "shiny.tag"))
  expect_equal(react_name(Slide()), "Slide")
  expect_equal(react_props(Slide("Test"))[["children"]], "Test")
})
