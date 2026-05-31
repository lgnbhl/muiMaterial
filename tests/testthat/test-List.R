test_that("List() returns shiny.tag, correct name and value", {
  expect_true(inherits(List(), "shiny.tag"))
  expect_equal(react_name(List()), "List")
  expect_equal(react_props(List("Test"))[["children"]], "Test")
})
