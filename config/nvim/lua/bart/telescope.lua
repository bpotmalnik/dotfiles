require('telescope').setup({
  defaults = {
    file_ignore_patters = {
      "node_modules",
      "vendor"
    },
    prompt_prefix = " >",
    color_devicons = true,
  },
})
