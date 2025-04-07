test_that("ClickAwayListener() returns shiny.tag, correct name and value",
          {
            expect_equal(class(ClickAwayListener()), "shiny.tag")
            expect_equal(environment(ClickAwayListener()[["children"]][[2]])[["data"]][["name"]], "ClickAwayListener")
            expect_equal(environment(ClickAwayListener("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
          })
