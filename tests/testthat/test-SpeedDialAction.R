test_that("SpeedDialAction() returns shiny.tag, correct name and value", {
  expect_true(inherits(SpeedDialAction(), "shiny.tag"))
  expect_equal(react_name(SpeedDialAction()), "SpeedDialAction")
  expect_equal(react_props(SpeedDialAction("Test"))[["children"]], "Test")
})
