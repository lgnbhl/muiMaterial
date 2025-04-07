test_that("Portal() returns shiny.tag, correct name and value", {
  expect_equal(class(Portal()), "shiny.tag")
  expect_equal(environment(Portal()[["children"]][[2]])[["data"]][["name"]], "Portal")
  expect_equal(environment(Portal("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
