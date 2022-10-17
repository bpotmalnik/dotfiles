local neogit = require('neogit')
local nnoremap = require('bart.keymap').nnoremap


neogit.setup()

nnoremap("<leader>gs", function()
  neogit.open({})
end)

-- noremap("<leader ga", "<cmd>!git fetch --all<CR>");

