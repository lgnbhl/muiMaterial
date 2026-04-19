import React from 'react';
import { TabContext, TabList } from '@mui/lab';

// Thin stateful wrappers around @mui/lab's TabContext and TabList.
// They exist so client-side tabs work without a Shiny server round-trip
// (useful in Quarto docs and static HTML). All rendering, styling, and
// behavior is delegated to @mui/lab — we only add a React.useState layer.
//
// TabPanel does not need wrapping; @mui/lab's TabPanel reads from the
// TabContext provider directly, so the plain TabPanel() R function works.

const SetValueContext = React.createContext(null);

export function MuiStaticTabContext({ value: initialValue, children, ...props }) {
  const [value, setValue] = React.useState(initialValue);
  return (
    <SetValueContext.Provider value={setValue}>
      <TabContext value={value} {...props}>{children}</TabContext>
    </SetValueContext.Provider>
  );
}

export function MuiStaticTabList({ onChange, ...props }) {
  const setValue = React.useContext(SetValueContext);
  return (
    <TabList
      onChange={(e, v) => {
        if (setValue) setValue(v);
        if (onChange) onChange(e, v);
      }}
      {...props}
    />
  );
}
