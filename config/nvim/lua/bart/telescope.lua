local telescope = require('telescope')

telescope.setup({
  defaults = {
    file_ignore_patters = {
      "node_modules",
      "vendor"
    },
    prompt_prefix = " >",
    color_devicons = true,
  },
})

telescope.load_extension("dap")
telescope.load_extension("flutter")
