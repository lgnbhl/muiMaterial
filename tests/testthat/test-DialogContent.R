test_that("DialogContent() returns shiny.tag, correct name and value", {
  expect_equal(class(DialogContent()), "shiny.tag")
  expect_equal(environment(DialogContent()[["children"]][[2]])[["data"]][["name"]], "DialogContent")
  expect_equal(environment(DialogContent("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
