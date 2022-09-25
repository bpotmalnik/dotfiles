local nnoremap = require("bart.keymap").nnoremap

function ContextSetup(show_all_context)
    require("treesitter-context").setup({
        enable = true,
        throttle = true,
        max_lines = 0,
        show_all_context = show_all_context,
        patters = {
            default = {
                "function",
                "method",
                "for",
                "while",
                "if",
                "switch",
                "case",
            },
            markdown = {
                "section",
            },
            json = {
                "pair",
            },
            yaml = {
                "block_mapping_pair",
            },
        }
    })
end

nnoremap("<leader>cf", function() ContextSetup(true) end)
nnoremap("<leader>cp", function() ContextSetup(false) end)
