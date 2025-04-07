test_that("ListItemAvatar() returns shiny.tag, correct name and value", {
  expect_equal(class(ListItemAvatar()), "shiny.tag")
  expect_equal(environment(ListItemAvatar()[["children"]][[2]])[["data"]][["name"]], "ListItemAvatar")
  expect_equal(environment(ListItemAvatar("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
