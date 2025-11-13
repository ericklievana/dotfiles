vim.filetype.add({
  pattern = {
    ['${XDG_CONFIG_HOME}/x11/xresources'] = 'xresources',
    ['${XDG_CONFIG_HOME}/x11/colorschemes/.*'] = 'xresources',
  },
})
