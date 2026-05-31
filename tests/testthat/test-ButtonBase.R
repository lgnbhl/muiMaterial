test_that("ButtonBase() returns shiny.tag, correct name and value", {
  expect_true(inherits(ButtonBase(), "shiny.tag"))
  expect_equal(react_name(ButtonBase()), "ButtonBase")
  expect_equal(react_props(ButtonBase("Test"))[["children"]], "Test")
})
