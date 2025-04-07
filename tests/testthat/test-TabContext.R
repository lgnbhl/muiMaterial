test_that("TabContext() returns shiny.tag, correct name and value", {
  expect_equal(class(TabContext()), "shiny.tag")
  expect_equal(environment(TabContext()[["children"]][[2]])[["data"]][["name"]], "TabContext")
  expect_equal(environment(TabContext("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
