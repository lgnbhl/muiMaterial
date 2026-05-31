test_that("InputBase() returns shiny.tag, correct name and value", {
  expect_true(inherits(InputBase(), "shiny.tag"))
  expect_equal(react_name(InputBase()), "InputBase")
  expect_equal(react_props(InputBase("Test"))[["children"]], "Test")
})
