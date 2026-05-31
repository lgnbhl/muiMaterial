test_that("Breadcrumbs() returns shiny.tag, correct name and value", {
  expect_true(inherits(Breadcrumbs(), "shiny.tag"))
  expect_equal(react_name(Breadcrumbs()), "Breadcrumbs")
  expect_equal(react_props(Breadcrumbs("Test"))[["children"]], "Test")
})
