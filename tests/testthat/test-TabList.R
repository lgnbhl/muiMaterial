test_that("TabList() returns shiny.tag, correct name and value", {
  expect_equal(class(TabList()), "shiny.tag")
  expect_equal(environment(TabList()[["children"]][[2]])[["data"]][["name"]], "TabList")
  expect_equal(environment(TabList("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
