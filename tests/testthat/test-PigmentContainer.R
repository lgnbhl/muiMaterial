test_that("PigmentContainer() returns shiny.tag, correct name and value", {
  expect_true(inherits(PigmentContainer(), "shiny.tag"))
  expect_equal(react_name(PigmentContainer()), "PigmentContainer")
  expect_equal(react_props(PigmentContainer("Test"))[["children"]], "Test")
})
