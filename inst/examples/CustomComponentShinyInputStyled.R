# https://mui.com/material-ui/customization/how-to-customize/#2-reusable-component
library(shiny)
library(muiMaterial)

# Using styled to custom component
CustomComponents <- tags$script(HTML("(function() {
  const { InputAdapter, debounce } = jsmodule['@/shiny.react'];
  const { Slider, styled } = jsmodule['@mui/material'];
  const CustomComponents = jsmodule['CustomComponents'] ??= {};

  const SliderStyled = styled(Slider)({
    '& .MuiSlider-thumb': {
      '&:hover, &.Mui-focusVisible': {
        boxShadow: `0px 0px 0px 8px #00FFFF`,
      },
      '&.Mui-active': {
        boxShadow: `0px 0px 0px 14px #00FFFF`,
      },
    },
  });

  CustomComponents.SliderCustom = InputAdapter(SliderStyled, (value, setValue) => ({
  value: value,
  onChange: (e, v) => setValue(v),
}), { policy: debounce, delay: 250 });
})();"))

SliderCustom <- function(inputId, ..., value = defaultValue) {
  shiny.react::reactElement(
    module = "CustomComponents",
    name = "SliderCustom",
    props = shiny.react::asProps(inputId = inputId, ..., value = value),
    deps = muiMaterial:::muiMaterialDependency()
  )
}

library(shiny)

ui_CustomComponentShinyInputStyled <- fluidPage(
  tagList(
    CustomComponents,
    SliderCustom("custom", value = 2, max = 10, step = 1),
    textOutput("value")
  )
)

server_CustomComponentShinyInputStyled <- function(input, output, session) {
  output$value <- renderText(input$custom)
}

if (interactive()) {
  shinyApp(ui_CustomComponentShinyInputStyled, server_CustomComponentShinyInputStyled)
}
