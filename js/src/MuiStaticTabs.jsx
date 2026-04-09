import React from 'react';
import * as MaterialLab from '@mui/lab';

const TabChangeContext = React.createContext(null);

export function MuiStaticTabContext({ value: initialValue, children, ...props }) {
  const [value, setValue] = React.useState(initialValue);
  return (
    <TabChangeContext.Provider value={setValue}>
      <MaterialLab.TabContext value={value} {...props}>
        {children}
      </MaterialLab.TabContext>
    </TabChangeContext.Provider>
  );
}

export function MuiStaticTabList({ children, ...props }) {
  const setValue = React.useContext(TabChangeContext);
  return (
    <MaterialLab.TabList onChange={(e, v) => setValue(v)} {...props}>
      {children}
    </MaterialLab.TabList>
  );
}

export function MuiStaticTabPanel(props) {
  return <MaterialLab.TabPanel {...props} />;
}
