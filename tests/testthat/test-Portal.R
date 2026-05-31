test_that("Portal() returns shiny.tag, correct name and value", {
  expect_true(inherits(Portal(), "shiny.tag"))
  expect_equal(react_name(Portal()), "Portal")
  expect_equal(react_props(Portal("Test"))[["children"]], "Test")
})
