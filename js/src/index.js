import * as Inputs from './inputs';
import ReactMarkdown from './ReactMarkdown';
import IconPopover from './IconPopover';
import Header from './Header'

window.jsmodule = {
  ...window.jsmodule,
  '@/shiny.quartz': { ...Inputs, ReactMarkdown, IconPopover, Header },
};
