test_that("BottomNavigationAction() returns shiny.tag, correct name and value",
          {
            expect_true(inherits(BottomNavigationAction(), "shiny.tag"))
            expect_equal(react_name(BottomNavigationAction()),
                         "BottomNavigationAction")
            expect_equal(react_props(BottomNavigationAction("Test"))[["children"]], "Test")
          })
