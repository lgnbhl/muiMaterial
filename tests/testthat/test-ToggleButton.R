test_that("ToggleButton() returns shiny.tag, correct name and value", {
  expect_true(inherits(ToggleButton(), "shiny.tag"))
  expect_equal(react_name(ToggleButton()), "ToggleButton")
  expect_equal(react_props(ToggleButton("Test"))[["children"]], "Test")
})
