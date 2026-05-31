test_that("RadioGroup() returns shiny.tag, correct name and value", {
  expect_true(inherits(RadioGroup(), "shiny.tag"))
  expect_equal(react_name(RadioGroup()), "RadioGroup")
  expect_equal(react_props(RadioGroup("Test"))[["children"]], "Test")
})
