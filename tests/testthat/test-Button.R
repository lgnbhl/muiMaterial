test_that("Button() returns shiny.tag, correct name and value", {
  expect_true(inherits(Button(), "shiny.tag"))
  expect_equal(react_name(Button()), "Button")
  expect_equal(react_props(Button("Test"))[["children"]], "Test")
})
