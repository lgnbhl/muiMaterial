import { useState } from 'react';
import { Menu } from '@mui/material';
import { useTriggerBind } from './useTriggerBind';

export default function MuiMenuTriggerId({ triggerId, children, ...props }) {
  const [anchorEl, setAnchorEl] = useState(null);
  const open = Boolean(anchorEl);
  const handleClose = () => setAnchorEl(null);
  useTriggerBind(triggerId, (e) => setAnchorEl(e.currentTarget));

  return (
    <Menu
      anchorEl={anchorEl}
      open={open}
      onClose={handleClose}
      onClick={handleClose}
      {...props}
    >
      {children}
    </Menu>
  );
}
