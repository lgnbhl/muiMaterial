# Getting Started

``` r

library(muiMaterial)
library(shiny)
```

## Getting Started

### Installation

``` r

install.packages("muiMaterial")
```

Or install the development version:

``` r

remotes::install_github("lgnbhl/muiMaterial")
```

### Your first Material UI app

``` r

library(shiny)
library(muiMaterial)

ui <- muiMaterialPage(
  CssBaseline(
    Box(
      sx = list(p = 2),
      Typography("Hello Material UI!", variant = "h4")
    )
  )
)

server <- function(input, output, session) {}

shinyApp(ui, server)
```

**Important**: Use
[`muiMaterialPage()`](https://felixluginbuhl.com/muiMaterial/reference/muiMaterialPage.md)
instead of [`fluidPage()`](https://rdrr.io/pkg/shiny/man/fluidPage.html)
and wrap your UI in
[`CssBaseline()`](https://felixluginbuhl.com/muiMaterial/reference/CssBaseline.md)
to ensure proper styling. Material UI uses its own design system and can
conflict with Bootstrap (see \[Bootstrap conflict\] below).

### Shiny input wrappers

Material UI components become Shiny inputs with `*.shinyInput()`
wrappers. For example, use
[`Button.shinyInput()`](https://felixluginbuhl.com/muiMaterial/reference/Button.md)
instead of
[`Button()`](https://felixluginbuhl.com/muiMaterial/reference/Button.md)
to capture user interactions in Shiny.

Explore available Shiny inputs with the showcase app (live
[here](https://lgnbhl-muimaterial-showcase.share.connect.posit.cloud/)):

``` r

muiMaterial::muiMaterialExample("showcase")
```

### Server-side rendering

When rendering components from the server, use
[`shiny::renderUI()`](https://rdrr.io/pkg/shiny/man/renderUI.html) or
[`shiny.react::renderReact()`](https://appsilon.github.io/shiny.react/reference/renderReact.html)
in your server function, and
[`shiny::uiOutput()`](https://rdrr.io/pkg/shiny/man/htmlOutput.html) or
[`shiny.react::reactOutput()`](https://appsilon.github.io/shiny.react/reference/reactOutput.html)
in your UI.

### Creating tabs

Use
[`TabContext.shinyInput()`](https://felixluginbuhl.com/muiMaterial/reference/TabContext.md),
[`TabList.shinyInput()`](https://felixluginbuhl.com/muiMaterial/reference/TabList.md),
and
[`TabPanel.shinyInput()`](https://felixluginbuhl.com/muiMaterial/reference/TabPanel.md)
to create tabs with server-side reactivity, or
[`TabContext.static()`](https://felixluginbuhl.com/muiMaterial/reference/TabContext.md),
[`TabList.static()`](https://felixluginbuhl.com/muiMaterial/reference/TabList.md),
and
[`TabPanel()`](https://felixluginbuhl.com/muiMaterial/reference/TabPanel.md)
for purely client-side tab switching. Read the
[vignette](https://felixluginbuhl.com/muiMaterial/articles/tabs.html) or
see a [minimal code
example](https://github.com/lgnbhl/muiMaterial/blob/main/inst/examples/Tabs.R).

For more advanced navigation, use client-side routing with
[reactRouter](https://felixluginbuhl.com/reactRouter/).

### Styling with sx

Customize any component using the `sx` argument for inline CSS-in-JS
styling:

``` r

Box(
  sx = list(
    bgcolor = "primary.main",
    color = "white",
    p = 3,
    borderRadius = 2
  ),
  Typography("Styled with sx", variant = "h5")
)
```

It is more powerful and maintainable than traditional CSS. See the [MUI
sx documentation](https://mui.com/system/getting-started/the-sx-prop/)
for all available properties.

### Naming conventions

Function names in `muiMaterial` mirror the original [MUI component
names](https://mui.com/material-ui/all-components/) as closely as
possible
(e.g. [`Button()`](https://felixluginbuhl.com/muiMaterial/reference/Button.md),
[`Typography()`](https://felixluginbuhl.com/muiMaterial/reference/Typography.md),
[`Drawer()`](https://felixluginbuhl.com/muiMaterial/reference/Drawer.md)).
Suffixes are used to distinguish variants that add R/Shiny-specific
behavior:

- **`.shinyInput`** — Wraps a component as a Shiny input, so its value
  is available server-side via `input$inputId`. Use these when you need
  to read or react to user interactions in R. This convention is
  borrowed from the
  [shiny.fluent](https://appsilon.github.io/shiny.fluent/) package.
  Examples:
  [`Button.shinyInput()`](https://felixluginbuhl.com/muiMaterial/reference/Button.md),
  [`Slider.shinyInput()`](https://felixluginbuhl.com/muiMaterial/reference/Slider.md),
  [`Autocomplete.shinyInput()`](https://felixluginbuhl.com/muiMaterial/reference/Autocomplete.md).

- **`.triggerId`** — Wraps a component that binds to an external DOM
  element by its HTML `id`. The referenced element acts as a trigger
  (e.g. a button click opens a drawer or menu), with open/close state
  managed entirely on the client side. Examples:
  [`Drawer.triggerId()`](https://felixluginbuhl.com/muiMaterial/reference/Drawer.triggerId.md),
  [`Menu.triggerId()`](https://felixluginbuhl.com/muiMaterial/reference/Menu.triggerId.md).

- **`.static`** — Wraps a component whose state is managed entirely on
  the client side (in React), with no round-trip to the Shiny server.
  Useful when server-side reactivity is not needed, for example tab
  switching that only shows/hides content. Examples:
  [`TabContext.static()`](https://felixluginbuhl.com/muiMaterial/reference/TabContext.md)
  and
  [`TabList.static()`](https://felixluginbuhl.com/muiMaterial/reference/TabList.md).

Both `.triggerId` and `.static` variants keep state in the browser and
never communicate with the Shiny server. The difference is that
`.triggerId` components require a reference to an external trigger
element, while `.static` components are self-contained.

### CSS conflicts with Bootstrap

[`muiMaterialPage()`](https://felixluginbuhl.com/muiMaterial/reference/muiMaterialPage.md)
suppresses Bootstrap by default, giving MUI components a clean CSS
environment. If you need to mix MUI with Bootstrap-dependent packages
(e.g. `shiny`, `bslib`, `DT`, `plotly`), see the [CSS conflicts with
Bootstrap](https://felixluginbuhl.com/muiMaterial/articles/bootstrap.md)
vignette for details and workarounds.
