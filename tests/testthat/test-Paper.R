test_that("Paper() returns shiny.tag, correct name and value", {
  expect_equal(class(Paper()), "shiny.tag")
  expect_equal(environment(Paper()[["children"]][[2]])[["data"]][["name"]], "Paper")
  expect_equal(environment(Paper("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
