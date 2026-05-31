test_that("TableHead() returns shiny.tag, correct name and value", {
  expect_true(inherits(TableHead(), "shiny.tag"))
  expect_equal(react_name(TableHead()), "TableHead")
  expect_equal(react_props(TableHead("Test"))[["children"]], "Test")
})
