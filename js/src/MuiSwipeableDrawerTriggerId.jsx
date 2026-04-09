import { useState } from 'react';
import { SwipeableDrawer } from '@mui/material';
import { useTriggerBind } from './useTriggerBind';

export default function MuiSwipeableDrawerTriggerId({ triggerId, width = 280, closeOnLinkClick, children, sx, ...props }) {
  const [open, setOpen] = useState(false);
  useTriggerBind(triggerId, () => setOpen(true));

  return (
    <SwipeableDrawer
      open={open}
      onClose={() => setOpen(false)}
      onOpen={() => setOpen(true)}
      slotProps={{ paper: { sx: { width, ...sx } } }}
      {...props}
    >
      <div onClick={(e) => { if (closeOnLinkClick !== false && e.target.closest('a')) setOpen(false); }}>
        {children}
      </div>
    </SwipeableDrawer>
  );
}
