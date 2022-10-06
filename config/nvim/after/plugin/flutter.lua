local nnoremap = require("bart.keymap").nnoremap


nnoremap("<leader>fs", ":FlutterRun --flavor development -t lib/main_development.dart<cr>")
nnoremap("<leader>fd", ":FlutterDevices<cr>")
nnoremap("<leader>fe", ":FlutterEmulators<cr>")
nnoremap("<leader>fr", ":FlutterReload<cr>")
nnoremap("<leader>fR", ":FlutterRestart<cr>")
nnoremap("<leader>fq", ":FlutterQuit<cr>")
