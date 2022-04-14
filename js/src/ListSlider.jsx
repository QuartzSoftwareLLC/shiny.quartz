import * as Mui from '@mui/material';
import { useState, useMemo, useEffect } from 'react';
import dayjs from 'dayjs';

export default function ListSlider({
  value,
  onChange,
  options,
  animate = false,
  animationInterval = 1000,
  animationStepSize = 1,
  markInterval = 1,
  ...props
}) {
  const [sliderValue, setSliderValue] = useState(
    options.findIndex((val) => val === value)
  );

  const max = options.length - 1;

  const handleChange = (event, newValue) => {
    setSliderValue(newValue);
  };
  useEffect(() => {
    onChange(options[sliderValue]);
  }, [sliderValue]);
  const [animationId, setAnimationId] = useState();
  useEffect(() => {
    if (animate) {
      const animation = setInterval(() => {
        setSliderValue((val) => (val >= max ? 0 : val + animationStepSize));
      }, animationInterval);
      setAnimationId(animation);
    } else {
      console.log(animationId, 'interval');
      clearInterval(animationId);
    }
  }, [animate]);

  const handleValueLabel = (val) => options[val];

  const marks = useMemo(() => {
    const getMarks = (int) =>
      [...Array(Math.floor(max / int) + 1).keys()]
        .map((i) => ({
          value: i * int,
          label: options[i * int],
        }))
        .filter((m) => m.value >= 0);

    return getMarks(markInterval);
  }, [markInterval]);

  return (
    <Mui.Box sx={{ pr: 3, pl: 3, pt: 3 }}>
      <Mui.Slider
        max={max}
        marks={marks}
        value={sliderValue}
        valueLabelDisplay='auto'
        valueLabelFormat={handleValueLabel}
        onChange={handleChange}
        {...props}
      />
    </Mui.Box>
  );
}
