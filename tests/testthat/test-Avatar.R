test_that("Avatar() returns shiny.tag, correct name and value", {
  expect_equal(class(Avatar()), "shiny.tag")
  expect_equal(environment(Avatar()[["children"]][[2]])[["data"]][["name"]], "Avatar")
  expect_equal(environment(Avatar("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
