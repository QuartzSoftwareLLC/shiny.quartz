import * as Inputs from './inputs';
import ReactMarkdown from './ReactMarkdown';
import IconPopover from './IconPopover';

window.jsmodule = {
  ...window.jsmodule,
  '@/shiny.quartz': { ...Inputs, ReactMarkdown, IconPopover },
};
