test_that("ToggleButtonGroup() returns shiny.tag, correct name and value",
          {
            expect_true(inherits(ToggleButtonGroup(), "shiny.tag"))
            expect_equal(react_name(ToggleButtonGroup()), "ToggleButtonGroup")
            expect_equal(react_props(ToggleButtonGroup("Test"))[["children"]], "Test")
          })
