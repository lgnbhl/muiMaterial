test_that("DialogContent() returns shiny.tag, correct name and value", {
  expect_true(inherits(DialogContent(), "shiny.tag"))
  expect_equal(react_name(DialogContent()), "DialogContent")
  expect_equal(react_props(DialogContent("Test"))[["children"]], "Test")
})
