test_that("Autocomplete() returns shiny.tag, correct name and value", {
  expect_true(inherits(Autocomplete(), "shiny.tag"))
  expect_equal(
    react_name(Autocomplete()),
    "AutocompleteStatic"
  )
  expect_equal(
    react_data(Autocomplete("Test"))[["props"]][[
      "value"
    ]][["children"]],
    "Test"
  )
})

test_that("Autocomplete.shinyInput() returns shiny.tag bound to the Shiny-wired Autocomplete", {
  tag <- Autocomplete.shinyInput("myId")
  expect_true(inherits(tag, "shiny.tag"))
  expect_true(inherits(tag, "muiMaterial"))
  expect_equal(
    react_name(tag),
    "Autocomplete"
  )
  expect_equal(
    react_props(tag)[[
      "inputId"
    ]],
    "myId"
  )
})

test_that("Autocomplete.shinyInput() validates inputId and inputProps", {
  expect_error(Autocomplete.shinyInput(123), "inputId")
  expect_error(
    Autocomplete.shinyInput("id", inputProps = "not a list"),
    "`inputProps` must be a list"
  )
})

test_that("Autocomplete.shinyInput() warns on conflicting arguments", {
  child <- shiny::tags$input()
  expect_warning(
    Autocomplete.shinyInput(
      "id",
      child,
      renderInput = muiMaterial::JS("function(p){}")
    ),
    "renderInput.*takes precedence"
  )
  expect_warning(
    Autocomplete.shinyInput("id", child, inputProps = list(label = "x")),
    "child element takes precedence"
  )
  expect_warning(
    Autocomplete.shinyInput("id", shiny::tags$input(), shiny::tags$input()),
    "unnamed arguments"
  )
})
