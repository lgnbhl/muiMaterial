# HTML body without Bootstrap and margins

Creates a Material UI page without Bootstrap and with 0 margin in body
by default. You can choose to use Google Roboto font as well as Google
icons fonts with the \`Icon()\` component.

## Usage

``` r
muiMaterialPage(
  ...,
  useFontRoboto = FALSE,
  useMaterialIconsFilled = FALSE,
  useMaterialIconsOutlined = FALSE,
  useMaterialIconsRounded = FALSE,
  useMaterialIconsTwoTones = FALSE,
  suppressBootstrap = TRUE,
  styleBody = "margin:0",
  debugReact = FALSE
)
```

## Arguments

- ...:

  The contents of the document body.

- useFontRoboto:

  Use Google Roboto font CDN in head, FALSE by default.

- useMaterialIconsFilled:

  Use Google icons CDN in head to use \`Icon()\` component, FALSE by
  default.

- useMaterialIconsOutlined:

  Use Google icons CDN in head to use \`Icon()\` component, FALSE by
  default.

- useMaterialIconsRounded:

  Use Google icons CDN in head to use \`Icon()\` component, FALSE by
  default.

- useMaterialIconsTwoTones:

  Use Google icons CDN in head to use \`Icon()\` component, FALSE by
  default.

- suppressBootstrap:

  Whether to suppress Bootstrap. TRUE by default.

- styleBody:

  CSS style in body, using \`margin:0\` by default.

- debugReact:

  Whether to enable react debug mode. FALSE by default.

## Value

html object with 'margin:0' which can be passed as the UI of a Shiny
app.

## Details

The Bootstrap library is suppressed by default, as it doesn't work well
with Material UI in general. The full set of available Material Icon
names is at \<https://fonts.google.com/icons?icon.set=Material+Icons\>.

## Examples

``` r
if (FALSE) { # interactive()
library(shiny)
library(muiMaterial)

ui <- muiMaterialPage(
  useFontRoboto = TRUE,
  useMaterialIconsFilled = TRUE,
  Box(
    sx = list(p = 2),
    Typography("Hello Material UI!", variant = "h4"),
    Icon("home")
  )
)

shinyApp(ui, function(input, output, session) {})
}
```
