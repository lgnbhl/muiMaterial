test_that("Skeleton() returns shiny.tag, correct name and value", {
  expect_true(inherits(Skeleton(), "shiny.tag"))
  expect_equal(react_name(Skeleton()), "Skeleton")
  expect_equal(react_props(Skeleton("Test"))[["children"]], "Test")
})
