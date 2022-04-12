import * as Mui from '@mui/material';
import { useState, useMemo } from 'react';
import dayjs from 'dayjs';

export default function DateSlider({
  startDate,
  value,
  onChange,
  endDate,
  interval = 'month',
  format = 'YYYY-MM',
  markFormat = undefined,
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
    onChange(dayjs(startDate).add(newValue, 'month').format(format));
    setSliderValue(newValue);
  };

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
      inner = getMarks(12);
    } else if (interval == 'month') {
      inner = getMarks(1);
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
