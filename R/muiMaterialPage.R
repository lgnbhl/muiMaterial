#' HTML body without Bootstrap and margins
#'
#' Creates a Material UI page without Bootstrap and with 0 margin in body by default.
#' You can choose to use Google Roboto font as well as Google icons fonts
#' with the `Icon()` component.
#'
#' The Bootstrap library is suppressed by default, as it doesn't work well
#' with Material UI in general. The full set of available Material Icon names
#' is at <https://fonts.google.com/icons?icon.set=Material+Icons>.
#'
#' @param ... The contents of the document body.
#' @param useFontRoboto Use Google Roboto font CDN in head, FALSE by default.
#' @param useMaterialIconsFilled Use Google icons CDN in head to use `Icon()` component, FALSE by default.
#' @param useMaterialIconsOutlined Use Google icons CDN in head to use `Icon()` component, FALSE by default.
#' @param useMaterialIconsRounded Use Google icons CDN in head to use `Icon()` component, FALSE by default.
#' @param useMaterialIconsTwoTones Use Google icons CDN in head to use `Icon()` component, FALSE by default.
#' @param suppressBootstrap Whether to suppress Bootstrap. TRUE by default.
#' @param styleBody CSS declarations applied to the document body via a
#'   \code{body \{ ... \}} style rule, \code{"margin:0"} by default.
#' @param debugReact Whether to enable react debug mode. FALSE by default.
#' @return A browsable `htmltools` tag list which can be passed as the UI of a
#'   Shiny app or rendered standalone (e.g. with `htmltools::save_html()`).
#'   Head content (meta tags, the body style rule) is emitted via
#'   `htmltools::tags$head()` and hoisted into the document head at render
#'   time. The Google Fonts links are HTML dependencies, so they are also
#'   included in R Markdown and Quarto documents.
#'
#' @examplesIf interactive()
#' library(shiny)
#' library(muiMaterial)
#'
#' ui <- muiMaterialPage(
#'   useFontRoboto = TRUE,
#'   useMaterialIconsFilled = TRUE,
#'   Box(
#'     sx = list(p = 2),
#'     Typography("Hello Material UI!", variant = "h4"),
#'     Icon("home")
#'   )
#' )
#'
#' shinyApp(ui, function(input, output, session) {})
#' @export
muiMaterialPage <- function(
  ...,
  useFontRoboto = FALSE,
  useMaterialIconsFilled = FALSE,
  useMaterialIconsOutlined = FALSE,
  useMaterialIconsRounded = FALSE,
  useMaterialIconsTwoTones = FALSE,
  suppressBootstrap = TRUE,
  styleBody = "margin:0",
  debugReact = FALSE
) {
  checkmate::assert_flag(useFontRoboto)
  checkmate::assert_flag(useMaterialIconsFilled)
  checkmate::assert_flag(useMaterialIconsOutlined)
  checkmate::assert_flag(useMaterialIconsRounded)
  checkmate::assert_flag(useMaterialIconsTwoTones)
  checkmate::assert_flag(suppressBootstrap)
  checkmate::assert_string(styleBody)
  checkmate::assert_flag(debugReact)

  if (debugReact) {
    shiny.react::enableReactDebugMode()
  }

  useGoogleFonts <- any(
    useFontRoboto,
    useMaterialIconsFilled,
    useMaterialIconsOutlined,
    useMaterialIconsRounded,
    useMaterialIconsTwoTones
  )

  googleFontHref <- function(family) {
    paste0("https://fonts.googleapis.com/icon?family=", family)
  }

  # The Google Fonts links are HTML dependencies rather than tags$head()
  # children: knitr (R Markdown, Quarto, pkgdown) keeps dependencies but drops
  # tags$head(), so the fonts would otherwise be missing from documents.
  # Dependencies are also de-duplicated when several pages request a font.
  fontDependencies <- Filter(Negate(is.null), list(
    if (useGoogleFonts) {
      googleFontDependency(
        "google-fonts-preconnect",
        paste0(
          '<link rel="preconnect" href="https://fonts.googleapis.com">',
          '<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>'
        )
      )
    },
    if (useFontRoboto) {
      googleFontDependency(
        "font-roboto",
        stylesheet = "https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap"
      )
    },
    if (useMaterialIconsFilled) {
      googleFontDependency("material-icons", stylesheet = googleFontHref("Material+Icons"))
    },
    if (useMaterialIconsOutlined) {
      googleFontDependency("material-icons-outlined", stylesheet = googleFontHref("Material+Icons+Outlined"))
    },
    if (useMaterialIconsRounded) {
      googleFontDependency("material-icons-round", stylesheet = googleFontHref("Material+Icons+Round"))
    },
    if (useMaterialIconsTwoTones) {
      googleFontDependency("material-icons-two-tone", stylesheet = googleFontHref("Material+Icons+Two+Tone"))
    }
  ))

  # A tagList with a tags$head() rather than a full tags$html()/tags$body()
  # document: Shiny inserts the UI into its own document body, and a nested
  # <html>/<body> only renders correctly because browsers merge the stray
  # tags. Head content is hoisted by htmltools/Shiny at render time, and the
  # body style is applied with a CSS rule instead of a <body> attribute.
  htmltools::browsable(htmltools::tagList(
    htmltools::tags$head(
      htmltools::tags$meta(charset = "UTF-8"),
      htmltools::tags$meta(
        name = "viewport",
        content = "initial-scale=1, width=device-width"
      ),
      htmltools::tags$style(htmltools::HTML(
        sprintf("body{%s}", styleBody)
      ))
    ),
    fontDependencies,
    if (suppressBootstrap) {
      htmltools::suppressDependencies("bootstrap")
    } else {
      shiny::bootstrapLib()
    },
    ...
  ))
}

# An HTML dependency that only injects head markup: either raw `head` HTML or
# a <link rel="stylesheet"> to an external (CDN) `stylesheet` URL.
#
# The dependency is disk-based (a `file` src) although it ships no file:
# Quarto and non-self-contained R Markdown copy dependencies into a lib
# folder and refuse href-only ones. `all_files = FALSE` with no script or
# stylesheet listed means nothing is copied.
googleFontDependency <- function(name, head = NULL, stylesheet = NULL) {
  if (!is.null(stylesheet)) {
    head <- sprintf(
      '<link rel="stylesheet" href="%s">',
      htmltools::htmlEscape(stylesheet, attribute = TRUE)
    )
  }
  htmltools::htmlDependency(
    name = paste0("muiMaterial-", name),
    version = "1.0.0",
    src = "www/muiMaterial",
    package = "muiMaterial",
    all_files = FALSE,
    head = head
  )
}
