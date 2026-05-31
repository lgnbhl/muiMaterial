test_that("MobileStepper() returns shiny.tag, correct name and value", {
  expect_true(inherits(MobileStepper(), "shiny.tag"))
  expect_equal(react_name(MobileStepper()), "MobileStepper")
  expect_equal(react_props(MobileStepper("Test"))[["children"]], "Test")
})
