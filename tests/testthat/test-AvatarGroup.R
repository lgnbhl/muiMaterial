test_that("AvatarGroup() returns shiny.tag, correct name and value", {
  expect_true(inherits(AvatarGroup(), "shiny.tag"))
  expect_equal(react_name(AvatarGroup()), "AvatarGroup")
  expect_equal(react_props(AvatarGroup("Test"))[["children"]], "Test")
})
