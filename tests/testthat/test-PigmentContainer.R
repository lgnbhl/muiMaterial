test_that("PigmentContainer() returns shiny.tag, correct name and value", {
  expect_equal(class(PigmentContainer()), "shiny.tag")
  expect_equal(environment(PigmentContainer()[["children"]][[2]])[["data"]][["name"]], "PigmentContainer")
  expect_equal(environment(PigmentContainer("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
