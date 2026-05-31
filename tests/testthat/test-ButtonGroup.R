test_that("ButtonGroup() returns shiny.tag, correct name and value", {
  expect_true(inherits(ButtonGroup(), "shiny.tag"))
  expect_equal(react_name(ButtonGroup()), "ButtonGroup")
  expect_equal(react_props(ButtonGroup("Test"))[["children"]], "Test")
})
