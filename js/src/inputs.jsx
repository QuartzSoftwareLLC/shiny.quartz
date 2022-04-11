import { ButtonAdapter, InputAdapter } from '@/shiny.react';
import * as Mui from '@mui/material';
import { useState } from 'react';

export const IconSwitch = InputAdapter(
  ({ open, onClick, children }) => {
    return (
      <Mui.IconButton color={open ? 'primary' : 'default'} onClick={onClick}>
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
