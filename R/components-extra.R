# Additional MUI components not listed in 'components.R' (e.g. @mui/lab
# components that don't appear in the @mui/material component index).

#' LoadingButton
#'
#' @description \url{https://mui.com/material-ui/react-button/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#' @note \code{LoadingButton} is part of \href{https://mui.com/material-ui/about-the-lab/}{\code{@mui/lab}},
#'   which is published on the MUI beta channel. Lab APIs may change in future minor
#'   releases.
#' @name LoadingButton
NULL

#' @rdname LoadingButton
#' @include aaa-utils.R
#' @export
LoadingButton <- component("LoadingButton", module = "@mui/lab")
