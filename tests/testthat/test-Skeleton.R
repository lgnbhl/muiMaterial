test_that("Skeleton() returns shiny.tag, correct name and value", {
  expect_equal(class(Skeleton()), "shiny.tag")
  expect_equal(environment(Skeleton()[["children"]][[2]])[["data"]][["name"]], "Skeleton")
  expect_equal(environment(Skeleton("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
