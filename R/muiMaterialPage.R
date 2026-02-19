#' HTML body without Bootstrap and margins
#'
#' Creates a Material UI page without Bootstrap and with 0 margin in body by default.
#' You can choose to use Google Roboto font as well as Google icons fonts
#' with the `Icon()` component.
#'
#' The Bootstrap library is suppressed by default, as it doesn't work well
#' with Material UI in general.
#'
#' @details
#' \url{https://fonts.google.com/icons?icon.set=Material+Icons}
#'
#' @param ... The contents of the document body.
#' @param useFontRoboto Use Google Roboto font CDN in head, FALSE by default.
#' @param useMaterialIconsFilled Use Google icons CDN in head to use `Icon()` component, FALSE by default.
#' @param useMaterialIconsOutlined Use Google icons CDN in head to use `Icon()` component, FALSE by default.
#' @param useMaterialIconsRounded Use Google icons CDN in head to use `Icon()` component, FALSE by default.
#' @param useMaterialIconsTwoTones Use Google icons CDN in head to use `Icon()` component, FALSE by default.
#' @param suppressBootstrap Whether to suppress Bootstrap.
#' @param styleBody CSS style in body, using `margin:0` by default.
#' @param debugReact Whether to enable react debug mode. Default to FALSE.
#' @return html object with 'margin:0' which can be passed as the UI of a Shiny app.
#'
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
  htmltools::tags$html(
    htmltools::tags$head(
      htmltools::tags$meta(
        name = "viewport",
        content = "initial-scale=1, width=device-width"
      ),
      if (useFontRoboto) {
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
        htmltools::tags$link(
          rel = "preconnect",
          href = "https://fonts.googleapis.com"
        )
      },
      if (useMaterialIconsFilled) {
        htmltools::tags$link(
          rel = "stylesheet",
          href = "https://fonts.googleapis.com/icon?family=Material+Icons"
        )
      },
      if (useMaterialIconsOutlined) {
        htmltools::tags$link(
          rel = "preconnect",
          href = "https://fonts.googleapis.com"
        )
      },
      if (useMaterialIconsOutlined) {
        htmltools::tags$link(
          rel = "stylesheet",
          href = "https://fonts.googleapis.com/icon?family=Material+Icons+Outlined"
        )
      },
      if (useMaterialIconsRounded) {
        htmltools::tags$link(
          rel = "preconnect",
          href = "https://fonts.googleapis.com"
        )
      },
      if (useMaterialIconsRounded) {
        htmltools::tags$link(
          rel = "stylesheet",
          href = "https://fonts.googleapis.com/icon?family=Material+Icons+Round"
        )
      },
      if (useMaterialIconsTwoTones) {
        htmltools::tags$link(
          rel = "preconnect",
          href = "https://fonts.googleapis.com"
        )
      },
      if (useMaterialIconsTwoTones) {
        htmltools::tags$link(
          rel = "stylesheet",
          href = "https://fonts.googleapis.com/icon?family=Material+Icons+Two+Tone"
        )
      }
    ),
    htmltools::tagList(
      htmltools::tags$body(
        if (debugReact) shiny.react::enableReactDebugMode(),
        style = styleBody,
        if (suppressBootstrap) htmltools::suppressDependencies("bootstrap"),
        ...
      )
    )
  )
}
