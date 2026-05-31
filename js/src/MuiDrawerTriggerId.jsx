import { useState } from 'react';
import { Drawer } from '@mui/material';
import { useTriggerBind } from './useTriggerBind';

export default function MuiDrawerTriggerId({ triggerId, width = 280, closeOnLinkClick, children, sx, ...props }) {
  const [open, setOpen] = useState(false);
  useTriggerBind(triggerId, () => setOpen(true));

  return (
    <Drawer
      open={open}
      onClose={() => setOpen(false)}
      slotProps={{
        paper: {
          sx: { width, ...sx },
          onClick: closeOnLinkClick !== false
            ? (e) => { if (e.target.closest('a')) setOpen(false); }
            : undefined,
        },
      }}
      {...props}
    >
      {children}
    </Drawer>
  );
}
