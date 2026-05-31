test_that("Alert() returns shiny.tag, correct name and value", {
  expect_true(inherits(Alert(), "shiny.tag"))
  expect_equal(react_name(Alert()), "Alert")
  expect_equal(react_props(Alert("Test"))[["children"]], "Test")
})
