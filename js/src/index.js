import * as Inputs from './inputs';
import ReactMarkdown from './ReactMarkdown';
window.jsmodule = {
  ...window.jsmodule,
  '@/shiny.quartz': { ...Inputs, ReactMarkdown },
};
