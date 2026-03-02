test_that("ToggleButtonGroup() returns shiny.tag, correct name and value",
          {
            expect_true(inherits(ToggleButtonGroup(), "shiny.tag"))
            expect_equal(environment(ToggleButtonGroup()[["children"]][[2]])[["data"]][["name"]], "ToggleButtonGroup")
            expect_equal(environment(ToggleButtonGroup("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
          })
