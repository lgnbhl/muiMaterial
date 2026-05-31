test_that("InputLabel() returns shiny.tag, correct name and value", {
  expect_true(inherits(InputLabel(), "shiny.tag"))
  expect_equal(react_name(InputLabel()), "InputLabel")
  expect_equal(react_props(InputLabel("Test"))[["children"]], "Test")
})
