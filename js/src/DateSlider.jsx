import * as Mui from '@mui/material';
import { useState, useMemo, useEffect } from 'react';
import dayjs from 'dayjs';

export default function DateSlider({
  startDate,
  value,
  onChange,
  endDate,
  interval = 'month',
  format = 'YYYY-MM',
  markFormat = undefined,
  animate = false,
  animationInterval = 1000,
  animationStepSize = 1,
  markInterval = 1,
  labelFormat = undefined,
  ...props
}) {
  const innerMarkFormat = markFormat || labelFormat || format;
  const innerLabelFormat = labelFormat || format;
  const [sliderValue, setSliderValue] = useState(
    dayjs(value).diff(startDate, 'month')
  );

  const max = dayjs(endDate).diff(startDate, 'month');

  const handleChange = (event, newValue) => {
    setSliderValue(newValue);
  };
  useEffect(() => {
    onChange(dayjs(startDate).add(sliderValue, 'month').format(format));
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

  const handleValueLabel = (val) =>
    dayjs(startDate).add(val, 'month').format(innerLabelFormat);

  const marks = useMemo(() => {
    const getMarks = (int) =>
      [...Array(Math.floor(max / int) + 1).keys()]
        .map((i) => ({
          value:
            i * int -
            dayjs(startDate).diff(dayjs(startDate).startOf(interval), 'months'),
          label: dayjs(startDate)
            .startOf(interval)
            .add(i * int, 'months')
            .format(innerMarkFormat),
        }))
        .filter((m) => m.value >= 0);

    let inner = false;
    if (interval == 'year') {
      inner = getMarks(12 * markInterval);
    } else if (interval == 'month') {
      inner = getMarks(1 * markInterval);
    }
    return inner;
  }, [interval]);

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
