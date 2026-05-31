test_that("Avatar() returns shiny.tag, correct name and value", {
  expect_true(inherits(Avatar(), "shiny.tag"))
  expect_equal(react_name(Avatar()), "Avatar")
  expect_equal(react_props(Avatar("Test"))[["children"]], "Test")
})
