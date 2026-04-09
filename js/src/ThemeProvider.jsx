import { ThemeProvider as MuiThemeProvider, createTheme } from '@mui/material';
import { useMemo } from 'react';

export default ({ children, theme }) => {
  const muiTheme = useMemo(() => createTheme(theme ?? {}), [theme]);
  return <MuiThemeProvider theme={muiTheme}>{children}</MuiThemeProvider>;
};
