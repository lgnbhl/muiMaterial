test_that("PigmentGrid() returns shiny.tag, correct name and value", {
  expect_true(inherits(PigmentGrid(), "shiny.tag"))
  expect_equal(react_name(PigmentGrid()), "PigmentGrid")
  expect_equal(react_props(PigmentGrid("Test"))[["children"]], "Test")
})
