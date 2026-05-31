test_that("InputAdornment() returns shiny.tag, correct name and value", {
  expect_true(inherits(InputAdornment(), "shiny.tag"))
  expect_equal(react_name(InputAdornment()), "InputAdornment")
  expect_equal(react_props(InputAdornment("Test"))[["children"]], "Test")
})
