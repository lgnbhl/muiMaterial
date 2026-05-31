test_that("Modal() returns shiny.tag, correct name and value", {
  expect_true(inherits(Modal(), "shiny.tag"))
  expect_equal(react_name(Modal()), "Modal")
  expect_equal(react_props(Modal("Test"))[["children"]], "Test")
})
