local dap = require("dap")
local dapui_widgets = require("dap.ui.widgets")
local remap = require("bart.keymap") 
local daptext = require("nvim-dap-virtual-text")
local nnoremap = remap.nnoremap

local repl_options = {
  height = 10,
}

-- Fix an issue with nvim-dap buffer error.
-- vim.api.nvim_create_autocmd('BufHidden',  {
--   pattern  = '[dap-terminal]*',
--   callback = function(arg)
--     vim.schedule(function() vim.api.nvim_buf_delete(arg.buf, { force = true }) end)
--   end
-- })

-- A command to close a floating window with Esc key.
-- https://github.com/mfussenegger/nvim-dap/issues/415
vim.api.nvim_create_autocmd(
  "FileType",
  { 
    pattern = { "dap-float" },
    command = [[nnoremap <buffer><silent> <Esc> :close!<CR>]] 
  }
)

daptext.setup({
  enabled = true,
})

dap.listeners.after.event_initialized["dapui_config"] = function()
    dap.repl.open(repl_options)
end
dap.listeners.before.event_terminated["dapui_config"] = function()
    dap.repl.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
    dap.repl.close()
end

nnoremap("<leader>dr", function()
    dap.repl.toggle(repl_options)
end)

nnoremap("<leader>df", ":Telescope dap frames<CR>")

nnoremap("<leader>ds", function()
    dapui_widgets.centered_float(dapui_widgets.scopes)
end)

nnoremap("<leader>de", function()
    dapui_widgets.centered_float(dapui_widgets.expression)
end)

nnoremap("<leader>di", function()
    dapui_widgets.hover()
end)

nnoremap("<leader>dlb", ":Telescope dap list_breakpoints<CR>")

nnoremap("<leader>dcb", function() 
    dap.clear_breakpoints()
end)
nnoremap("<leader>db", function()
    dap.toggle_breakpoint()
end)

nnoremap("<leader>dB", function()
    dap.set_breakpoint(vim.fn.input('Breakpoint condition: '))
end)

nnoremap("<leader>dc", function()
    dap.run_to_cursor()
end)

-- Go down the call stack.
nnoremap("<leader>dn", function()
    dap.down()
end)

-- Go up the call stack.
nnoremap("<leader>dN", function()
    dap.up()
end)

nnoremap("<Up>", function()
    dap.continue()
end)

nnoremap("<Down>", function()
    dap.step_over()
end)

nnoremap("<Right>", function()
    dap.step_into()
end)

nnoremap("<Left>", function()
    dap.step_out()
end)

nnoremap("<leader><leader>", function()
    dap.close()
end)

