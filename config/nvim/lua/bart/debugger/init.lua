local dap = require("dap")

local remap = require("bart.keymap") 
local nnoremap = remap.nnoremap

dap.adapters.dart = {
 type = "executable",
 command = "flutter",
 args = {"debug_adapter"}
}

nnoremap("<leader>b", function()
  dap.continue()
end)

nnoremap("<Down>", function()
  dap.step_over()
end)

nnoremap("<Right>", function()
  dap.step_out()
end)

nnoremap("<leader>B", function()
  dap.set_breakpoint(vim.fn.input('Breakpoint condition: '))
end)

nnoremap("<leader><leader>", function()
  dap.close()
end)

