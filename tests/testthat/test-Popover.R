test_that("Popover() returns shiny.tag, correct name and value", {
  expect_true(inherits(Popover(), "shiny.tag"))
  expect_equal(react_name(Popover()), "Popover")
  expect_equal(react_props(Popover("Test"))[["children"]], "Test")
})
