# CSS conflicts with Bootstrap

``` r

library(muiMaterial)
library(shiny)
```

## CSS conflicts with Bootstrap

### Why `muiMaterialPage()`?

[`muiMaterialPage()`](https://felixluginbuhl.com/muiMaterial/reference/muiMaterialPage.md)
is the recommended way to build MUI apps with `muiMaterial`. It
suppresses Bootstrap by default (`suppressBootstrap = TRUE`), giving MUI
components a clean CSS environment where they render exactly as
intended.

This matters because MUI has its own design system — its own typography
scale, spacing, color palette, and CSS reset — that is independent of
Bootstrap. When both frameworks are loaded, their global CSS rules
conflict, leading to visual inconsistencies (e.g. text appearing too
small, margins being off).

By removing Bootstrap,
[`muiMaterialPage()`](https://felixluginbuhl.com/muiMaterial/reference/muiMaterialPage.md)
avoids these conflicts entirely. MUI provides its own complete set of
input components
([`TextField()`](https://felixluginbuhl.com/muiMaterial/reference/TextField.md),
[`Button()`](https://felixluginbuhl.com/muiMaterial/reference/Button.md),
[`Select()`](https://felixluginbuhl.com/muiMaterial/reference/Select.md),
[`Slider()`](https://felixluginbuhl.com/muiMaterial/reference/Slider.md),
etc.) through their `.shinyInput()` wrappers, so you don’t need
Bootstrap-styled inputs.

### Mixing MUI with Bootstrap-dependent packages

You can still use other R packages that depend on Bootstrap
(e.g. `shiny`, `bslib`, `DT`, `plotly`, `leaflet`) alongside
`muiMaterial`. You just need to account for the CSS conflict.

#### Using `muiMaterialPage()` with shiny components

You can add Bootstrap 3 dependency use by default by shiny when using
[`muiMaterialPage()`](https://felixluginbuhl.com/muiMaterial/reference/muiMaterialPage.md)
with `suppressBootstrap = FALSE`.

Bootstrap 3 and 4 sets `html { font-size: 10px }`, which breaks MUI’s
`rem`-based sizing, making components like
[`Typography()`](https://felixluginbuhl.com/muiMaterial/reference/Typography.md)
appear too small. To fix this, wrap MUI components in a
[`ThemeProvider()`](https://felixluginbuhl.com/muiMaterial/reference/ThemeProvider.md)
with `htmlFontSize = 10`, which tells MUI to recalculate its `rem`
values for the actual root font-size.

``` r

library(shiny)
library(muiMaterial)

muiMaterialPage(
  suppressBootstrap = FALSE, # TRUE by default, FALSE add Bootstrap 3 as dependency
  shiny::tags$h3("muiMaterial with Bootstrap 3"),
  shiny::textInput("name", "Shiny textInput"),
  shiny::actionButton("btn", "Shiny actionButton"),
  ThemeProvider(
    theme = list(typography = list(htmlFontSize = 10)), # fix Bootstrap 3 and html font size 
    Card(
      sx = list(m = 3),
      CardContent(
        Typography("Card title", variant = "h5"),
        Typography("Some content inside a Card component.", variant = "body2")
      )
    )
  )
)
```

#### Using MUI components with bslib

The `bslib` R package gives access to Bootstrap 5, which font sizing
system is align with MUI components. If
[`muiMaterialPage()`](https://felixluginbuhl.com/muiMaterial/reference/muiMaterialPage.md)
cannot be use, it is recommended to use bslib functions with
`theme = bs_theme(version = 5)`.

As Bootstrap 5 and MUI have two design system, always wrap MUI
components in
[`ScopedCssBaseline()`](https://felixluginbuhl.com/muiMaterial/reference/ScopedCssBaseline.md)
to ensure their correct rendering.

``` r

library(bslib)
library(muiMaterial)

bslib::page_fluid(
  theme = bs_theme(version = 5),
  shiny::tags$h3("Bootstrap 5 with muiMaterial"),
  shiny::textInput("name", "Shiny textInput"),
  shiny::actionButton("btn", "Shiny actionButton"),
  ScopedCssBaseline(
    Card(
      sx = list(m = 3),
      CardContent(
        Typography("Card title", variant = "h5"),
        Typography("Some content inside a Card component.", variant = "body2")
      )
    )
  )
)
```
