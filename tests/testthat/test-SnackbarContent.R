test_that("SnackbarContent() returns shiny.tag, correct name and value", {
  expect_equal(class(SnackbarContent()), "shiny.tag")
  expect_equal(environment(SnackbarContent()[["children"]][[2]])[["data"]][["name"]], "SnackbarContent")
  expect_equal(environment(SnackbarContent("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
