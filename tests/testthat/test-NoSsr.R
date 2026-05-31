test_that("NoSsr() returns shiny.tag, correct name and value", {
  expect_true(inherits(NoSsr(), "shiny.tag"))
  expect_equal(react_name(NoSsr()), "NoSsr")
  expect_equal(react_props(NoSsr("Test"))[["children"]], "Test")
})
