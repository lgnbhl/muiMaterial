test_that("BottomNavigationAction() returns shiny.tag, correct name and value",
          {
            expect_true(inherits(BottomNavigationAction(), "shiny.tag"))
            expect_equal(environment(BottomNavigationAction()[["children"]][[2]])[["data"]][["name"]],
                         "BottomNavigationAction")
            expect_equal(environment(BottomNavigationAction("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
          })
