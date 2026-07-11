import { useState } from 'react';
import { Menu } from '@mui/material';
import { useTriggerBind } from './useTriggerBind';

export default function MuiMenuTriggerId({ triggerId, closeOnItemClick, onClose, onClick, children, ...props }) {
  const [anchorEl, setAnchorEl] = useState(null);
  const open = Boolean(anchorEl);
  // The matched trigger element (second arg — delegated events keep
  // `currentTarget` on document) is the anchor the menu attaches to.
  useTriggerBind(triggerId, (e, el) => setAnchorEl(el));

  // Compose caller callbacks instead of letting them override the wrapper's
  // state handling: the menu always closes itself, then the caller is
  // notified. `anchorEl`/`open` come after {...props} — they are
  // wrapper-owned state.
  const handleClose = (e, reason) => {
    setAnchorEl(null);
    if (onClose) onClose(e, reason);
  };
  const handleClick = (e) => {
    if (closeOnItemClick !== false) setAnchorEl(null);
    if (onClick) onClick(e);
  };

  return (
    <Menu
      {...props}
      anchorEl={anchorEl}
      open={open}
      onClose={handleClose}
      onClick={handleClick}
    >
      {children}
    </Menu>
  );
}
