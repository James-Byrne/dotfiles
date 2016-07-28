module.exports = {
  config: {
    // default font size in pixels for all tabs
    fontSize: 11,

    // font family with optional fallbacks
    fontFamily: 'Hack',

    // terminal cursor background color (hex)
    cursorColor: '#cc00ff',

    // color of the text
    foregroundColor: '#fff',

    // terminal background color
    backgroundColor: '#2e2e2d',

    // border color (window, tabs)
    borderColor: '#333',

    // custom css to embed in the main window
    css: '',

    // custom padding (css format, i.e.: `top right bottom left`)
    termCSS: '',

    // custom padding
    padding: '12px 14px',

    // some color overrides. see http://bit.ly/29k1iU2 for
    // the full list
    colors: [
      '#ffffff',
      '#c62828',
      '#558b2f',
      '#f9a825',
      '#1779e8',
      '#cc00ff',
      '#00838f',
      '#d0d0d0',
      '#808080',
      '#c62828',
      '#558b2f',
      '#f9a825',
      '#1779e8',
      '#cc00ff',
      '#00838f',
      '#1b1a1a'
    ]
  },

  // a list of plugins to fetch and install from npm
  // format: [@org/]project[#version]
  // examples:
  //   `hypersolar`
  //   `@company/project`
  //   `project#1.0.1`
  plugins: [`hyperterm-material`],

  // in development, you can create a directory under
  // `~/.hyperterm_plugins/local/` and include it here
  // to load it and avoid it being `npm install`ed
  localPlugins: []
};
