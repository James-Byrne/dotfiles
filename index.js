
const backgroundColor = '#282c34'
const foregroundColor = '#ffffff'
const cursorColor = foregroundColor
const borderColor = backgroundColor

const colors = {
  black       : foregroundColor,
  red         : '#e06c75', // red
  green       : '#608B4E', // green
  yellow      : '#f9a825', // yellow
  blue        : '#1779e8', // blue
  magenta     : '#cc00ff', // pink
  cyan        : '#00838f', // cyan
  white       : '#d0d0d0', // light gray
  lightBlack  : '#808080', // medium gray
  lightRed    : '#e06c75', // red
  lightGreen  : '#77DD77', // green
  lightYellow : '#f9a825', // yellow
  lightBlue   : '#56b6c2', // blue
  lightMagenta: '#c678dd', // pink
  lightCyan   : '#56b6c2', // cyan
  colorCubes  : '#ffffff', // white
  grayscale   : backgroundColor
}
exports.decorateConfig = config => {
  return Object.assign({}, config, {
    foregroundColor,
    backgroundColor,
    borderColor,
    cursorColor,
    colors,
    termCSS: `
      ${config.termCSS || ''}
      .cursor-node {
        mix-blend-mode: difference;
      }
    `,
    css: `
      ${config.css || ''}
      .header_header {
        top: 0;
        right: 0;
        left: 0;
      }
      .tabs_list {
        background-color: #21252b !important;
        border-bottom-color: rgba(0,0,0,.15) !important;
      }
      .tab_tab.tab_active {
        font-weight: 500;
        background-color: ${backgroundColor};
        border-color: rgba(0,0,0,.27) !important;
      }
      .tab_tab.tab_active::before {
        border-bottom-color: ${backgroundColor};
      }
    `
  })
}
