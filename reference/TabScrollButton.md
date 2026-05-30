# TabScrollButton

<https://mui.com/material-ui/api/tab-scroll-button/>

## Usage

``` r
TabScrollButton(...)
```

## Arguments

- ...:

  Props to pass to the component.

## Value

Object with `shiny.tag` class suitable for use in the UI of a Shiny app.

## Details

- direction `'left'| 'right'`  
  Default is - The direction the button should indicate.

- orientation `'horizontal'| 'vertical'`  
  Default is - The component orientation (layout flow direction).

- children `node`  
  Default is - The content of the component.

- classes `object`  
  Default is - Override or extend the styles applied to the
  component.See CSS classes API below for more details.

- disabled `bool`  
  Default is FALSE If true, the component is disabled.

- slotProps
  `{ endScrollButtonIcon?: func| object, startScrollButtonIcon?: func| object }`  
  Default is The extra props for the slot components. You can override
  the existing props or add new ones.

- slots
  `{ EndScrollButtonIcon?: elementType, StartScrollButtonIcon?: elementType }`  
  Default is The components used for each slot inside.

- sx `Array func| object| bool | func| object`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.
