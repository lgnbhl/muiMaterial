test_that("AvatarGroup() returns shiny.tag, correct name and value", {
  expect_equal(class(AvatarGroup()), "shiny.tag")
  expect_equal(environment(AvatarGroup()[["children"]][[2]])[["data"]][["name"]], "AvatarGroup")
  expect_equal(environment(AvatarGroup("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
