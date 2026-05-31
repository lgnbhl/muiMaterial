test_that("SpeedDial() returns shiny.tag, correct name and value", {
  expect_true(inherits(SpeedDial(), "shiny.tag"))
  expect_equal(react_name(SpeedDial()), "SpeedDial")
  expect_equal(react_props(SpeedDial("Test"))[["children"]], "Test")
})
