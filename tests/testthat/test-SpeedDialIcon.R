test_that("SpeedDialIcon() returns shiny.tag, correct name and value", {
  expect_true(inherits(SpeedDialIcon(), "shiny.tag"))
  expect_equal(react_name(SpeedDialIcon()), "SpeedDialIcon")
  expect_equal(react_props(SpeedDialIcon("Test"))[["children"]], "Test")
})
