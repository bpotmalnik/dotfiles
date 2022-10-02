local Remap = require("bart.keymap")
local nnoremap = Remap.nnoremap

nnoremap("<leader>fad", ":FlutterRun lib/main_development.dart<cr>")
nnoremap("<leader>fq", ":FlutterQuit<cr>")
nnoremap("<leader>fr", ":FlutterHotReload<cr>")
nnoremap("<leader>fR", ":FlutterHotRestart<cr>")
nnoremap("<leader>fd", ":FlutterDevices<cr>")
nnoremap("<leader>fD", ":FlutterVisualDebug<cr>")
nnoremap("<leader>fe", ":FlutterEmulators<cr>")
nnoremap("<leader>fE", ":FlutterEmulatorsLaunch<cr>")
nnoremap("<leader>fm", function()
  vim.fn.sign_define("FlutterMenu")
end)
