test_that("Box() returns shiny.tag, correct name and value", {
  expect_true(inherits(Box(), "shiny.tag"))
  expect_equal(react_name(Box()), "Box")
  expect_equal(react_props(Box("Test"))[["children"]], "Test")
})
