import { InputAdapter } from '@/shiny.react';
import * as Mui from '@mui/material';

export const IconSwitch = InputAdapter(
  ({ open, onClick, children }) => {
    return (
      <Mui.IconButton color={open ? 'secondary' : 'default'} onClick={onClick}>
        {children}
      </Mui.IconButton>
    );
  },
  (value, setValue) => ({
    open: value,
    onClick: (e) => {
      console.log('value', value);
      setValue(!value);
    },
  })
);
