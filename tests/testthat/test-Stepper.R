test_that("Stepper() returns shiny.tag, correct name and value", {
  expect_true(inherits(Stepper(), "shiny.tag"))
  expect_equal(react_name(Stepper()), "Stepper")
  expect_equal(react_props(Stepper("Test"))[["children"]], "Test")
})
