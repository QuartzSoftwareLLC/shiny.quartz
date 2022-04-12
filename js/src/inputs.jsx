import { InputAdapter } from '@/shiny.react';
import DateSliderBase from './DateSlider';
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

export const DateSlider = InputAdapter(DateSliderBase, (value, setValue) => ({
  value,
  onChange: setValue,
}));