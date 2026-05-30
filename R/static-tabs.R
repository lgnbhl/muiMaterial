#' @rdname TabContext
#' @param value Controlled selected tab value. When supplied, the caller is the
#'   source of truth: the value is honored on every render and the wrapper never
#'   mutates it. Combine with an \code{onChange} (on \code{TabList.static} or on
#'   \code{TabContext.static}) that writes the new value back to wherever it
#'   lives. The tidiest binding needs no JavaScript: make the tab a URL path
#'   segment, link each \code{Tab} with \code{href} (e.g. \code{"#/overview"}),
#'   and read it back with \code{reactRouter::useParams(as = "value", selector =
#'   "tab")}. Use \code{useParams} (a scalar), not \code{useSearchParams}, which
#'   returns \code{getAll()}, an array that never matches a \code{TabPanel}'s
#'   string value. Other sources (a parent's state, a Shiny input) work too. Use
#'   either \code{value} or \code{defaultValue}, not both; the mode is
#'   fixed at the first render.
#' @param defaultValue Uncontrolled initial selected tab value. The wrapper owns
#'   the active-tab state and updates it on user clicks. This is the right choice
#'   for Quarto documents and static HTML, where no external state is involved.
#' @param ... Child elements (typically a \code{Box} wrapping \code{TabList.static} and \code{TabPanel} components).
#'   \code{value} and \code{defaultValue} are accepted by name only -- putting
#'   \code{...} first guarantees that an unnamed child element is never matched
#'   positionally into \code{value} / \code{defaultValue}.
#' @export
TabContext.static <- function(..., value = NULL, defaultValue = NULL) {
  # Only forward `value` / `defaultValue` when actually supplied. Passing a
  # NULL named arg alongside unnamed children makes shiny.react::asProps()
  # bind the first child positionally into the NULL slot, which puts the
  # JS wrapper into spurious controlled mode and produces a blank UI.
  named <- list()
  if (!is.null(value)) named$value <- value
  if (!is.null(defaultValue)) named$defaultValue <- defaultValue
  tag <- shiny.react::reactElement(
    module = "@/muiMaterial",
    name = "MuiStaticTabContext",
    props = do.call(shiny.react::asProps, c(named, list(...))),
    deps = muiMaterialDependency()
  )
  class(tag) <- c("muiMaterial", class(tag))
  tag
}

#' @rdname TabList
#' @param ... Child \code{Tab} elements and other props.
#' @export
TabList.static <- function(...) {
  tag <- shiny.react::reactElement(
    module = "@/muiMaterial",
    name = "MuiStaticTabList",
    props = shiny.react::asProps(...),
    deps = muiMaterialDependency()
  )
  class(tag) <- c("muiMaterial", class(tag))
  tag
}
