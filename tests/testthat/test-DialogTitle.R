test_that("DialogTitle() returns shiny.tag, correct name and value", {
  expect_equal(class(DialogTitle()), "shiny.tag")
  expect_equal(environment(DialogTitle()[["children"]][[2]])[["data"]][["name"]], "DialogTitle")
  expect_equal(environment(DialogTitle("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
