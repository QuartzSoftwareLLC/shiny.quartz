import * as Mui from '@mui/material';
import { useState, useMemo, useEffect } from 'react';
import dayjs from 'dayjs';
import CircleIcon from '@mui/icons-material/Circle';

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
  const [innerAnimate, setInnerAnimate] = useState(false);
  const max = options.length - 1;

  const handleChange = (_, newValue) => {
    setSliderValue(newValue);
  };
  useEffect(() => {
    setSliderValue(0);
  }, [options.join('')]);
  useEffect(() => {
    onChange(options[sliderValue]);
  }, [sliderValue]);
  const [animationId, setAnimationId] = useState();
  useEffect(() => {
    if (innerAnimate) {
      const animation = setInterval(() => {
        setSliderValue((val) => (val >= max ? 0 : val + animationStepSize));
      }, animationInterval);
      setAnimationId(animation);
    } else {
      console.log(animationId, 'interval');
      clearInterval(animationId);
    }
  }, [innerAnimate]);

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
  }, [markInterval, options.join('')]);

  return (
    <Mui.Box sx={{ pr: 3, pl: 3, pt: 3 }} display='flex' alignItems='start'>
      {animate && (
        <Mui.Box width={55} position='relative'>
          <Mui.Tooltip title='Toggle Animate'>
            <Mui.IconButton
              sx={{ position: 'absolute', top: -4 }}
              onClick={() => setInnerAnimate((x) => !x)}
            >
              <CircleIcon color={innerAnimate ? 'primary' : 'default'} />
            </Mui.IconButton>
          </Mui.Tooltip>
        </Mui.Box>
      )}
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
