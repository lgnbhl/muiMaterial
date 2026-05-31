test_that("Dialog() returns shiny.tag, correct name and value", {
  expect_true(inherits(Dialog(), "shiny.tag"))
  expect_equal(react_name(Dialog()), "Dialog")
  expect_equal(react_props(Dialog("Test"))[["children"]], "Test")
})
