import { useState } from 'react';
import { Popover } from '@mui/material';
import { useTriggerBind } from './useTriggerBind';

export default function MuiPopoverTriggerId({ triggerId, children, ...props }) {
  const [anchorEl, setAnchorEl] = useState(null);
  const open = Boolean(anchorEl);
  useTriggerBind(triggerId, (e) => setAnchorEl(e.currentTarget));

  return (
    <Popover
      anchorEl={anchorEl}
      open={open}
      onClose={() => setAnchorEl(null)}
      {...props}
    >
      {children}
    </Popover>
  );
}
