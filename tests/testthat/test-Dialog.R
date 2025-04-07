test_that("Dialog() returns shiny.tag, correct name and value", {
  expect_equal(class(Dialog()), "shiny.tag")
  expect_equal(environment(Dialog()[["children"]][[2]])[["data"]][["name"]], "Dialog")
  expect_equal(environment(Dialog("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
