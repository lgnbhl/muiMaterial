# AccordionSummary

<https://mui.com/material-ui/api/accordion-summary/>

## Usage

``` r
AccordionSummary(...)
```

## Arguments

- ...:

  Props to pass to the component.

## Value

Object with `shiny.tag` class suitable for use in the UI of a Shiny app.

## Details

- children `node`  
  Default is - The content of the component.

- classes `object`  
  Default is - Override or extend the styles applied to the
  component.See CSS classes API below for more details.

- expandIcon `node`  
  Default is - The icon to display as the expand indicator.

- focusVisibleClassName `string`  
  Default is - This prop can help identify which element has keyboard
  focus. The class name will be applied when the element gains the focus
  through keyboard interaction. It's a polyfill for the CSS
  :focus-visible selector. The rationale for using this feature is
  explained here. A polyfill can be used to apply a focus-visible class
  to other components if needed.

- slotProps
  `{ content?: func| object, expandIconWrapper?: func| object, root?: func| object }`  
  Default is The props used for each slot inside.

- slots
  `{ content?: elementType, expandIconWrapper?: elementType, root?: elementType }`  
  Default is The components used for each slot inside.

- sx `Array func| object| bool | func| object`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.
