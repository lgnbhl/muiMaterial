# Backdrop

<https://mui.com/material-ui/api/backdrop/>

## Usage

``` r
Backdrop(...)
```

## Arguments

- ...:

  Props to pass to the component.

## Value

Object with `shiny.tag` class suitable for use in the UI of a Shiny app.

## Details

- open `bool`  
  Default is - If true, the component is shown.

- children `node`  
  Default is - The content of the component.

- classes `object`  
  Default is - Override or extend the styles applied to the
  component.See CSS classes API below for more details.

- component `elementType`  
  Default is - The component used for the root node. Either a string to
  use a HTML element or a component.

- components `{ Root?: elementType }`  
  Default is The components used for each slot inside.Deprecated Use the
  slots prop instead. This prop will be removed in a future major
  release. See Migrating from deprecated APIs for more details.

- componentsProps `{ root?: object }`  
  Default is The extra props for the slot components. You can override
  the existing props or add new ones.Deprecated Use the slotProps prop
  instead. This prop will be removed in a future major release. See
  Migrating from deprecated APIs for more details.

- invisible `bool`  
  Default is FALSE If true, the backdrop is invisible. It can be used
  when rendering a popover or a custom select component.

- slotProps `{ root?: func| object, transition?: func| object }`  
  Default is The props used for each slot inside.

- slots `{ root?: elementType, transition?: elementType }`  
  Default is The components used for each slot inside.

- sx `Array func| object| bool | func| object`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.

- TransitionComponent `elementType`  
  Default is Fade The component used for the transition. Follow this
  guide to learn more about the requirements for this
  component.Deprecated Use slots.transition instead. This prop will be
  removed in a future major release. See Migrating from deprecated APIs
  for more details.

- transitionDuration
  `number| { appear?: number, enter?: number, exit?: number }`  
  Default is - The duration for the transition, in milliseconds. You may
  specify a single timeout for all transitions, or individually with an
  object.
