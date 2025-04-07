test_that("NoSsr() returns shiny.tag, correct name and value", {
  expect_equal(class(NoSsr()), "shiny.tag")
  expect_equal(environment(NoSsr()[["children"]][[2]])[["data"]][["name"]], "NoSsr")
  expect_equal(environment(NoSsr("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
