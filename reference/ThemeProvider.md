# ThemeProvider

Custom ThemeProvider built on top of MUI's \`ThemeProvider\`. See
'js/src/ThemeProvider.jsx'. Pass a \`theme\` list (as you would pass a
JS object to MUI's \`createTheme()\`) plus any children to render under
that theme. See \<https://mui.com/material-ui/customization/theming/\>
for the upstream documentation.

## Usage

``` r
ThemeProvider(...)
```

## Arguments

- ...:

  Named arguments forwarded as React props (notably \`theme\`, a list
  mirroring MUI's \`createTheme()\` options), plus the children to
  render under the theme.

## Value

Object with \`shiny.tag\` class suitable for use in the UI of a Shiny
app.

## Examples

``` r
if (FALSE) { # interactive()
library(shiny)
library(muiMaterial)

theme <- list(palette = list(mode = "dark", primary = list(main = "#90caf9")))

ui <- muiMaterialPage(
  ThemeProvider(
    theme = theme,
    CssBaseline(),
    Button("Themed button", variant = "contained")
  )
)

shinyApp(ui, function(input, output, session) {})
}
```
