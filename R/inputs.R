# Script manually produced to create Shiny inputs
# see: https://appsilon.github.io/shiny.react/articles/shiny-react.html#creating-input-wrappers

button <- function(name, module = "@/shinyMaterialUI") {
  function(inputId, ...) {
    checkmate::assert_string(inputId)
    shiny.react::reactElement(
      module = module, name = name,
      props = shiny.react::asProps(inputId = inputId, ...),
      deps = muiMaterialDependency()
    )
  }
}

#' @rdname Button
#' @inherit shinyInput params return
#' @export
Button.shinyInput <- button("Button")

#' @rdname Button
#' @inherit shinyInput params return
#' @export
updateButton.shinyInput <- shiny.react::updateReactInput

#' @rdname Drawer
#' @inherit shinyInput params return
#' @export
Drawer.shinyInput <- button("Drawer")

#' @rdname Drawer
#' @inherit shinyInput params return
#' @export
updateDrawer.shinyInput <- shiny.react::updateReactInput

#' @rdname IconButton
#' @inherit shinyInput params return
#' @export
IconButton.shinyInput <- button("IconButton")

#' @rdname IconButton
#' @inherit shinyInput params return
#' @export
updateIconButton.shinyInput <- shiny.react::updateReactInput

#' @rdname Fab
#' @inherit shinyInput params return
#' @export
Fab.shinyInput <- button("Fab")

#' @rdname Fab
#' @inherit shinyInput params return
#' @export
updateFab.shinyInput <- shiny.react::updateReactInput

#' @rdname Menu
#' @inherit shinyInput params return
#' @export
Menu.shinyInput <- button("Menu")

#' @rdname Menu
#' @inherit shinyInput params return
#' @export
updateMenu.shinyInput <- shiny.react::updateReactInput

#' @rdname StepButton
#' @inherit shinyInput params return
#' @export
StepButton.shinyInput <- button("StepButton")

#' @rdname StepButton
#' @inherit shinyInput params return
#' @export
updateStepButton.shinyInput <- shiny.react::updateReactInput

#' @rdname ToggleButton
#' @inherit shinyInput params return
#' @export
ToggleButton.shinyInput <- button("ToggleButton")

#' @rdname ToggleButton
#' @inherit shinyInput params return
#' @export
updateToggleButton.shinyInput <- shiny.react::updateReactInput


input <- function(name, defaultValue = NULL, module = "@/shinyMaterialUI") {
  function(inputId, ..., value = defaultValue) {
    checkmate::assert_string(inputId)
    shiny.react::reactElement(
      module = module, name = name,
      props = shiny.react::asProps(inputId = inputId, ..., value = value),
      deps = muiMaterialDependency()
    )
  }
}

#' @rdname Autocomplete
#' @inherit shinyInput params return
#' @export
Autocomplete.shinyInput <- input("Autocomplete")

#' @rdname Autocomplete
#' @inherit shinyInput params return
#' @export
updateAutocomplete.shinyInput <- shiny.react::updateReactInput

#' @rdname Checkbox
#' @inherit shinyInput params return
#' @export
Checkbox.shinyInput <- input("Checkbox")

#' @rdname Checkbox
#' @inherit shinyInput params return
#' @export
updateCheckbox.shinyInput <- shiny.react::updateReactInput

#' @rdname Input
#' @inherit shinyInput params return
#' @export
Input.shinyInput <- input("Input")

#' @rdname Input
#' @inherit shinyInput params return
#' @export
updateInput.shinyInput <- shiny.react::updateReactInput

#' @rdname FormControlLabel
#' @inherit shinyInput params return
#' @export
FormControlLabel.shinyInput <- input("FormControlLabel")

#' @rdname FormControlLabel
#' @inherit shinyInput params return
#' @export
updateFormControlLabel.shinyInput <- shiny.react::updateReactInput

#' @rdname Radio
#' @inherit shinyInput params return
#' @export
Radio.shinyInput <- input("Radio")

#' @rdname Radio
#' @inherit shinyInput params return
#' @export
updateRadio.shinyInput <- shiny.react::updateReactInput

#' @rdname RadioGroup
#' @inherit shinyInput params return
#' @export
RadioGroup.shinyInput <- input("RadioGroup")

#' @rdname RadioGroup
#' @inherit shinyInput params return
#' @export
updateRadioGroup.shinyInput <- shiny.react::updateReactInput

#' @rdname Rating
#' @inherit shinyInput params return
#' @export
Rating.shinyInput <- input("Rating")

#' @rdname Rating
#' @inherit shinyInput params return
#' @export
updateRating.shinyInput <- shiny.react::updateReactInput

#' @rdname Select
#' @inherit shinyInput params return
#' @export
Select.shinyInput <- input("Select")

#' @rdname Select
#' @inherit shinyInput params return
#' @export
updateSelect.shinyInput <- shiny.react::updateReactInput

#' @rdname Slider
#' @inherit shinyInput params return
#' @export
Slider.shinyInput <- input("Slider")

#' @rdname Slider
#' @inherit shinyInput params return
#' @export
updateSlider.shinyInput <- shiny.react::updateReactInput

#' @rdname Switch
#' @inherit shinyInput params return
#' @export
Switch.shinyInput <- input("Switch")

#' @rdname Switch
#' @inherit shinyInput params return
#' @export
updateSwitch.shinyInput <- shiny.react::updateReactInput

#' @rdname Tabs
#' @inherit shinyInput params return
#' @export
Tabs.shinyInput <- input("Tabs")

#' @rdname Tabs
#' @inherit shinyInput params return
#' @export
updateTabs.shinyInput <- shiny.react::updateReactInput

#' @rdname Tab
#' @inherit shinyInput params return
#' @export
Tab.shinyInput <- input("Tab")

#' @rdname Tab
#' @inherit shinyInput params return
#' @export
updateTab.shinyInput <- shiny.react::updateReactInput

#' @rdname TabContext
#' @inherit shinyInput params return
#' @export
TabContext.shinyInput <- input("TabContext")

#' @rdname TabContext
#' @inherit shinyInput params return
#' @export
updateTabContext.shinyInput <- shiny.react::updateReactInput

#' @rdname TabList
#' @inherit shinyInput params return
#' @export
TabList.shinyInput <- input("TabList")

#' @rdname TabList
#' @inherit shinyInput params return
#' @export
updateTabList.shinyInput <- shiny.react::updateReactInput

#' @rdname TabPanel
#' @inherit shinyInput params return
#' @export
TabPanel.shinyInput <- input("TabPanel")

#' @rdname TabPanel
#' @inherit shinyInput params return
#' @export
updateTabPanel.shinyInput <- shiny.react::updateReactInput

#' @rdname TextField
#' @inherit shinyInput params return
#' @export
TextField.shinyInput <- input("TextField")

#' @rdname TextField
#' @inherit shinyInput params return
#' @export
updateTextField.shinyInput <- shiny.react::updateReactInput

#' @rdname ToggleButtonGroup
#' @inherit shinyInput params return
#' @export
ToggleButtonGroup.shinyInput <- input("ToggleButtonGroup")

#' @rdname ToggleButtonGroup
#' @inherit shinyInput params return
#' @export
updateToggleButtonGroup.shinyInput <- shiny.react::updateReactInput

