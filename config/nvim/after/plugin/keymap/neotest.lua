local nnoremap = require("bart.keymap").nnoremap

local silent = { silent = true }

nnoremap("<leader>ts", function() require("neotest").run.run() end, silent)
nnoremap("<leader>tf", function() 
  require("neotest").run.run(vim.fn.expand("%")) 
end, silent)
nnoremap("<leader>th", function() require("neotest").run.stop() end, silent)

