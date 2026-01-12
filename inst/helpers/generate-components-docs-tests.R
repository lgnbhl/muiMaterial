# Generate 'R/components.R', 'R/documentation.R'
library(rvest)
library(dplyr)
library(purrr)

url_api_with_dropdown <- "https://mui.com/material-ui/api/accordion/"

html_components <- url_api_with_dropdown |>
  read_html() |>
  html_elements(".css-uscrbs") # 'Component API' dropdown

components <- html_components |>
  html_text2()

components_href <- html_components |>
  html_children() |>
  html_attr("href")

components_url_api <- paste0("https://mui.com", components_href)

df_components <- tibble(
  components = components,
  components_url_api = components_url_api
)

# Generate components.R ---------------------------------------------------

create_component <- function(component) {
  paste0("
#' @rdname ", component,"
#' @export
", component," <- component('", component,"')
")
}

components_text <- purrr::map(.x = df_components$components, .f = create_component) |>
  unlist()

components_text_header <- paste0("## Script generated automatically from 'inst/helpers/documentation/generate-documentation.R' ##

component <- function(name, module = '@mui/material') {
  function(...) shiny.react::reactElement(
    module = module,
    name = name,
    props = shiny.react::asProps(...),
    deps = muiMaterialDependency()
  )
}

")

# generate file 'components.R'
cat(
  components_text_header,
  components_text,
  file = "R/components.R"
)


# Generate documentation.R ------------------------------------------------

base_url <- "https://mui.com/material-ui/api/"

get_component_props <- function(url) {
  url |>
    read_html() |>
    html_element(".css-1a2wx4v") |> # Props table node
    html_table() |>
    mutate(url = url)
}

components_props <- purrr::map_dfr(
  .x = components_url_api,
  .f = get_component_props,
  .progress = TRUE
)

components_props_cleaned <- components_props |>
  mutate(Name = gsub("\\*$", "", Name)) |> # remove asterisk in Name
  mutate(Default = gsub("true", "TRUE", Default),
         Default = gsub("false", "FALSE", Default))

# generate docs

create_component_items <- function(url_component) {
  df_filtered <- components_props_cleaned |>
    filter(url == url_component)

  items <- df_filtered |>
    mutate(Description = gsub("\n", " ", Description)) |>
    mutate(Description = gsub("\\\\", "", Description)) |>
    mutate(Description = gsub("\\\\Link", "", Description)) |>
    mutate(Description = gsub("\\[|\\]", "", Description)) |>
    mutate(Description = gsub("\\{|\\}", "", Description)) |>
    #mutate(Default = gsub("\\\\Link", "", Default)) |>
    #mutate(Default = gsub("\\{|\\}", "", Default)) |>
    mutate(Default = gsub("\\{|\\}", "", Default)) |>
    mutate(Default = gsub("\n", " ", Default)) |>
    mutate(items = paste0("#' \\item ", Name, " `", Type, "` \\cr Default is ", Default, " ", Description, "\n")) |>
    pull(items)

  component_name <- basename(unique(df_filtered$url))
  component_name <- gsub("-", " ", component_name)
  component_name <- stringr::str_to_title(component_name)
  component_name <- gsub(" ", "", component_name)

  c("#' ", component_name, "\n",
    "#' \n",
    "#' @description \\url{", unique(df_filtered$url),"}\n",
    "#' \n",
    "#' @param ... Props to pass to the component.\n",
    "#' @return Object with \\code{shiny.tag} class suitable for use in the UI of a Shiny app.\n",
    "#' \n",
    "#' @details\n",
    "#' \\itemize{\n",
    items,
    "#' }\n",
    "#'\n",
    "#' @md\n",
    "#' @name ", component_name, "\n",
    "NULL\n\n")
}

list <- purrr::map(.x = unique(components_props_cleaned$url), .f = create_component_items) |>
  unlist()

# remove emojis from docs
# textclean::replace_emoji()
# also remove "<" and ">" from docs

cat(list, sep = "", file = "R/documentation.R")

# Create component tests --------------------------------------------------

# Adapted from David Granjon's script in shinyNextUI
# https://github.com/RinteRface/shinyNextUI/blob/main/inst/helpers/test/create-tests.R

library(rstudioapi)

init_test_component <- function(el) {
  if (!dir.exists("tests/testthat/")) usethis::use_testthat()
  file.create(sprintf("tests/testthat/test-%s.R", el))
  usethis::use_test(sprintf("%s", el))
  test_script <- paste0('test_that("', el, '() returns shiny.tag, correct name and value", {\n',
                        '   expect_equal(class(', el, '()), "shiny.tag")\n',
                        '   expect_equal(environment(', el, '()[["children"]][[2]])[["data"]][["name"]], "', el, '")\n',
                        '   expect_equal(environment(', el, '("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")\n',
                        '})\n'
  )

  # Write to test file
  rstudioapi::insertText(test_script)
  ranges <- rstudioapi::document_range(c(1, 0), c(Inf, Inf))
  rstudioapi::setSelectionRanges(ranges)
  rstudioapi::executeCommand('reformatCode')
}

purrr::map(.x = df_components$components, .f = init_test_component)

