test_that("Breadcrumbs() returns shiny.tag, correct name and value", {
  expect_equal(class(Breadcrumbs()), "shiny.tag")
  expect_equal(environment(Breadcrumbs()[["children"]][[2]])[["data"]][["name"]], "Breadcrumbs")
  expect_equal(environment(Breadcrumbs("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
