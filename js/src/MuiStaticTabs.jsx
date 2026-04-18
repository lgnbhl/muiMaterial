import React from 'react';
import Tabs from '@mui/material/Tabs';

const TabValueContext = React.createContext(null);

export function MuiStaticTabContext({ value: initialValue, children }) {
  const [value, setValue] = React.useState(initialValue);
  return (
    <TabValueContext.Provider value={{ value, setValue }}>
      {children}
    </TabValueContext.Provider>
  );
}

export function MuiStaticTabList({ children, ...props }) {
  const { value, setValue } = React.useContext(TabValueContext);
  return (
    <Tabs value={value} onChange={(_e, v) => setValue(v)} {...props}>
      {children}
    </Tabs>
  );
}

export function MuiStaticTabPanel({ value: panelValue, children, ...props }) {
  const { value } = React.useContext(TabValueContext);
  const isActive = panelValue === value;
  return (
    <div role="tabpanel" hidden={!isActive} {...props}>
      {isActive && children}
    </div>
  );
}
