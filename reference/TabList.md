# TabList

<https://mui.com/material-ui/api/tab-list/>

## Usage

``` r
TabList(...)

TabList.shinyInput(inputId, ..., value = defaultValue)

updateTabList.shinyInput(
  session = shiny::getDefaultReactiveDomain(),
  inputId,
  ...
)

TabList.static(...)
```

## Arguments

- ...:

  Child `Tab` elements and other props.

- inputId:

  ID of the component.

- value:

  Starting value.

- session:

  Object passed as the \`session\` argument to Shiny server.

## Value

Object with `shiny.tag` class suitable for use in the UI of a Shiny app.

## Details

- children `node`  
  Default is NA A list of Tab / elements.

## Note

`TabList` is part of
[`@mui/lab`](https://mui.com/material-ui/about-the-lab/), which is
published on the MUI beta channel. Lab APIs may change in future minor
releases.
