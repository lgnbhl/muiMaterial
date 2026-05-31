test_that("OutlinedInput() returns shiny.tag, correct name and value", {
  expect_true(inherits(OutlinedInput(), "shiny.tag"))
  expect_equal(react_name(OutlinedInput()), "OutlinedInput")
  expect_equal(react_props(OutlinedInput("Test"))[["children"]], "Test")
})
