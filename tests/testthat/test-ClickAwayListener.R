test_that("ClickAwayListener() returns shiny.tag, correct name and value",
          {
            expect_true(inherits(ClickAwayListener(), "shiny.tag"))
            expect_equal(react_name(ClickAwayListener()), "ClickAwayListener")
            expect_equal(react_props(ClickAwayListener("Test"))[["children"]], "Test")
          })
