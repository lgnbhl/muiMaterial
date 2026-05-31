test_that("Radio() returns shiny.tag, correct name and value", {
  expect_true(inherits(Radio(), "shiny.tag"))
  expect_equal(react_name(Radio()), "Radio")
  expect_equal(react_props(Radio("Test"))[["children"]], "Test")
})
