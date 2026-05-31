test_that("Zoom() returns shiny.tag, correct name and value", {
  expect_true(inherits(Zoom(), "shiny.tag"))
  expect_equal(react_name(Zoom()), "Zoom")
  expect_equal(react_props(Zoom("Test"))[["children"]], "Test")
})
