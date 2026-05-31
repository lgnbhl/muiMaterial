test_that("Link() returns shiny.tag, correct name and value", {
  expect_true(inherits(Link(), "shiny.tag"))
  expect_equal(react_name(Link()), "Link")
  expect_equal(react_props(Link("Test"))[["children"]], "Test")
})
