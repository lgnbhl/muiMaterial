test_that("Switch() returns shiny.tag, correct name and value", {
  expect_true(inherits(Switch(), "shiny.tag"))
  expect_equal(react_name(Switch()), "Switch")
  expect_equal(react_props(Switch("Test"))[["children"]], "Test")
})
