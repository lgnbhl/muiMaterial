test_that("Tab() returns shiny.tag, correct name and value", {
  expect_true(inherits(Tab(), "shiny.tag"))
  expect_equal(react_name(Tab()), "Tab")
  expect_equal(react_props(Tab("Test"))[["children"]], "Test")
})
