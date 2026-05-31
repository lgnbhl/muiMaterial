test_that("Icon() returns shiny.tag, correct name and value", {
  expect_true(inherits(Icon(), "shiny.tag"))
  expect_equal(react_name(Icon()), "Icon")
  expect_equal(react_props(Icon("Test"))[["children"]], "Test")
})
