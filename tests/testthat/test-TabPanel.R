test_that("TabPanel() returns shiny.tag, correct name and value", {
  expect_equal(class(TabPanel()), "shiny.tag")
  expect_equal(environment(TabPanel()[["children"]][[2]])[["data"]][["name"]], "TabPanel")
  expect_equal(environment(TabPanel("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
