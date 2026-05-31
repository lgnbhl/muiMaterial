test_that("Backdrop() returns shiny.tag, correct name and value", {
  expect_true(inherits(Backdrop(), "shiny.tag"))
  expect_equal(react_name(Backdrop()), "Backdrop")
  expect_equal(react_props(Backdrop("Test"))[["children"]], "Test")
})
