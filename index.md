# muiMaterial

`muiMaterial` brings MUI [Material
UI](https://mui.com/material-ui/getting-started/), the world’s most
popular React UI framework, to R and Shiny.

### Why muiMaterial?

Most Shiny apps follow the same template: a sidebar on the left, tabs on
top, content in the middle. `muiMaterial` lets you go further. It gives
you access to Material UI’s rich component library, so you can build
apps and reports that look and feel truly unique.

- **Works with Shiny and Quarto** — use Material UI components in Shiny
  apps, [Quarto](https://quarto.org/) or on its own for fully customized
  HTML pages.
- **Built for AI** — AI tools like Claude, ChatGPT, or Copilot know MUI
  well. Ask an AI to generate MUI code, adapt it to R, and you’re done.
  No React or CSS knowledge needed. See the [AI-Assisted
  Development](https://felixluginbuhl.com/muiMaterial/articles/ai-assisted-development.html)
  vignette.
- **Multi-page apps** — pair with
  [reactRouter](https://felixluginbuhl.com/reactRouter/) to build apps
  where each page has its own shareable URL, deployable to GitHub Pages,
  Netlify, or Posit Connect.
- **Rich ecosystem** — extend with
  [muiDataGrid](https://felixluginbuhl.com/muiDataGrid/) (data tables),
  [muiCharts](https://felixluginbuhl.com/muiCharts/) (charts) and
  [muiTreeView](https://felixluginbuhl.com/muiTreeView/) (tree
  navigation).

See a live example: [MUI template
dashboard](https://lgnbhl-muimaterial-mui-template-dashboard.share.connect.posit.cloud/).

``` r

muiMaterial::muiMaterialExample("mui-template-dashboard")
```

### Quick start

``` r

remotes::install_github("lgnbhl/muiMaterial") # v0.2.0 (SOON ON CRAN)
```

``` r

install.packages("muiMaterial") # v0.1.3
```

``` r

library(shiny)
library(muiMaterial)

ui <- muiMaterialPage(
  Box(
    sx = list(p = 2),
    Typography("Hello Material UI!", variant = "h4")
  )
)

server <- function(input, output, session) {}

shinyApp(ui, server)
```

Explore the [Getting
Started](https://felixluginbuhl.com/muiMaterial/articles/getting-started.html)
vignette, or run the showcase:

``` r

muiMaterial::muiMaterialExample("showcase")
```

### Resources

- [Package documentation](https://felixluginbuhl.com/muiMaterial/)
- [All R
  examples](https://github.com/lgnbhl/muiMaterial/tree/main/inst/examples)
- [Official Material UI
  docs](https://mui.com/material-ui/getting-started/)

### Acknowledgements

`muiMaterial` is built on top of
[shiny.react](https://github.com/Appsilon/shiny.react), the R package by
[Appsilon](https://www.appsilon.com/) that makes it possible to use
React components in Shiny and Quarto.

### Contributing

Found a bug or have a feature request? [Open an
issue](https://github.com/lgnbhl/muiMaterial/issues). Pull requests are
welcome.

Follow [Felix Luginbuhl](https://linkedin.com/in/FelixLuginbuhl) on
LinkedIn for updates.

### License

This package is released under the [MIT
License](https://felixluginbuhl.com/muiMaterial/LICENSE). It bundles a
pre-built copy of the [Material UI](https://mui.com/) JavaScript
library; the third-party copyrights and license texts are summarised in
[LICENSE.note](https://felixluginbuhl.com/muiMaterial/LICENSE.note) and
preserved in `inst/www/muiMaterial/mui-material.js.LICENSE.txt`.

### Trademark notice

“MUI” and “Material UI” are trademarks of MUI Inc. `muiMaterial` is an
independent, community-maintained R package and is **not affiliated
with, sponsored by, or endorsed by MUI Inc.** The names are used solely
to identify the underlying JavaScript library that this package wraps.
See MUI’s [legal information](https://mui.com/legal/) for the canonical
list of MUI’s published policies.
