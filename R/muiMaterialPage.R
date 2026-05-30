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
#' @param styleBody CSS style in body, using `margin:0` by default.
#' @param debugReact Whether to enable react debug mode. FALSE by default.
#' @return html object with 'margin:0' which can be passed as the UI of a Shiny app.
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

  htmltools::browsable(htmltools::tags$html(
    htmltools::tags$head(
      htmltools::tags$meta(
        name = "viewport",
        content = "initial-scale=1, width=device-width"
      ),
      if (useGoogleFonts) {
        htmltools::tags$link(
          rel = "preconnect",
          href = "https://fonts.googleapis.com"
        )
      },
      if (useFontRoboto) {
        htmltools::tags$link(
          rel = "stylesheet",
          href = "https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap"
        )
      },
      if (useMaterialIconsFilled) {
        htmltools::tags$link(rel = "stylesheet", href = googleFontHref("Material+Icons"))
      },
      if (useMaterialIconsOutlined) {
        htmltools::tags$link(rel = "stylesheet", href = googleFontHref("Material+Icons+Outlined"))
      },
      if (useMaterialIconsRounded) {
        htmltools::tags$link(rel = "stylesheet", href = googleFontHref("Material+Icons+Round"))
      },
      if (useMaterialIconsTwoTones) {
        htmltools::tags$link(rel = "stylesheet", href = googleFontHref("Material+Icons+Two+Tone"))
      }
    ),
    htmltools::tagList(
      htmltools::tags$body(
        style = styleBody,
        if (suppressBootstrap) {
          htmltools::suppressDependencies("bootstrap")
        } else {
          shiny::bootstrapLib()
        },
        ...
      )
    )
  ))
}
