# Popper

<https://mui.com/material-ui/api/popper/>

## Usage

``` r
Popper(...)
```

## Arguments

- ...:

  Props to pass to the component.

## Value

Object with `shiny.tag` class suitable for use in the UI of a Shiny app.

## Details

- open `bool`  
  Default is - If true, the component is shown.

- anchorEl `HTML element| object| func`  
  Default is - An HTML element, virtualElement, or a function that
  returns either. It's used to set the position of the popper. The
  return value will passed as the reference object of the Popper
  instance.

- children `node| func`  
  Default is - Popper render function or node.

- component `elementType`  
  Default is - The component used for the root node. Either a string to
  use a HTML element or a component.

- components `{ Root?: elementType }`  
  Default is The components used for each slot inside the Popper. Either
  a string to use a HTML element or a component.Deprecated use the slots
  prop instead. This prop will be removed in a future major release. How
  to migrate.

- componentsProps `{ root?: func| object }`  
  Default is The props used for each slot inside the Popper.Deprecated
  use the slotProps prop instead. This prop will be removed in a future
  major release. How to migrate.

- container `HTML element| func`  
  Default is - An HTML element or function that returns one. The
  container will have the portal children appended to it.You can also
  provide a callback, which is called in a React layout effect. This
  lets you set the container from a ref, and also makes server-side
  rendering possible.By default, it uses the body of the top-level
  document object, so it's simply document.body most of the time.

- disablePortal `bool`  
  Default is FALSE The children will be under the DOM hierarchy of the
  parent component.

- keepMounted `bool`  
  Default is FALSE Always keep the children in the DOM. This prop can be
  useful in SEO situation or when you want to maximize the
  responsiveness of the Popper.

- modifiers
  `Array { data?: object, effect?: func, enabled?: bool, fn?: func, name?: any, options?: object, phase?: 'afterMain'| 'afterRead'| 'afterWrite'| 'beforeMain'| 'beforeRead'| 'beforeWrite'| 'main'| 'read'| 'write', requires?: Array string , requiresIfExists?: Array string } `  
  Default is - Popper.js is based on a "plugin-like" architecture, most
  of its features are fully encapsulated "modifiers".A modifier is a
  function that is called each time Popper.js needs to compute the
  position of the popper. For this reason, modifiers should be very
  performant to avoid bottlenecks. To learn how to create a modifier,
  read the modifiers documentation.

- placement
  `'auto-end'| 'auto-start'| 'auto'| 'bottom-end'| 'bottom-start'| 'bottom'| 'left-end'| 'left-start'| 'left'| 'right-end'| 'right-start'| 'right'| 'top-end'| 'top-start'| 'top'`  
  Default is 'bottom' Popper placement.

- popperOptions
  `{ modifiers?: array, onFirstUpdate?: func, placement?: 'auto-end'| 'auto-start'| 'auto'| 'bottom-end'| 'bottom-start'| 'bottom'| 'left-end'| 'left-start'| 'left'| 'right-end'| 'right-start'| 'right'| 'top-end'| 'top-start'| 'top', strategy?: 'absolute'| 'fixed' }`  
  Default is Options provided to the Popper.js instance.

- popperRef `ref`  
  Default is - A ref that points to the used popper instance.

- slotProps `{ root?: func| object }`  
  Default is The props used for each slot inside the Popper.

- slots `{ root?: elementType }`  
  Default is The components used for each slot inside the Popper. Either
  a string to use a HTML element or a component.

- sx `Array func| object| bool | func| object`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.

- transition `bool`  
  Default is FALSE Help supporting a react-transition-group/Transition
  component.
