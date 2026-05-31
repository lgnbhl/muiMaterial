test_that("Step() returns shiny.tag, correct name and value", {
  expect_true(inherits(Step(), "shiny.tag"))
  expect_equal(react_name(Step()), "Step")
  expect_equal(react_props(Step("Test"))[["children"]], "Test")
})
