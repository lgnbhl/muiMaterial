test_that("AlertTitle() returns shiny.tag, correct name and value", {
  expect_true(inherits(AlertTitle(), "shiny.tag"))
  expect_equal(react_name(AlertTitle()), "AlertTitle")
  expect_equal(react_props(AlertTitle("Test"))[["children"]], "Test")
})
