local Remap = require("bart.keymap")
local nnoremap = Remap.nnoremap
local inoremap = Remap.inoremap

local cmp = require("cmp")
local lspkind = require("lspkind")

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require("lua-dev").setup({
  
})

cmp.setup({
    snippet = {
        expand = function(args)
            require("luasnip").lsp_expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-j>'] = cmp.mapping.select_prev_item(),
        ['<C-k>'] = cmp.mapping.select_next_item(),
        ['<CR>'] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
        }),
        ['<C-u>'] = cmp.mapping.scroll_docs(-4),
        ['<C-d>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.close(),
    }),
    formatting = {
        format = lspkind.cmp_format {
            mode = 'text',
            with_text = true,
            menu = {
                buffer = "[buf]",
                nvim_lsp = "[LSP]",
                path = "[path]",
                luasnip = "[snip]",
            },
        },
    },
    sources = {
        { name = 'nvim_lsp'},
        { name = 'path'},
        { name = 'luasnip'},
        { name = 'buffer', keywoard_length = 5},
    },
    experimental = {
        native_menu = false,
        ghost_text = true,
    }
})

local function config(_config)
    return vim.tbl_deep_extend("force",{
        capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities()),
        on_attach = function()
            nnoremap("gd", function() vim.lsp.buf.definition() end)
            nnoremap("K", function() vim.lsp.buf.hover() end)
			      nnoremap("<leader>vws", function() vim.lsp.buf.workspace_symbol() end)
			      nnoremap("<leader>vd", function() vim.diagnostic.open_float() end)
			      nnoremap("[d", function() vim.diagnostic.goto_next() end)
			      nnoremap("]d", function() vim.diagnostic.goto_prev() end)
			      nnoremap("<leader>vca", function() vim.lsp.buf.code_action() end)
            nnoremap("<leader>vrr", function() vim.lsp.buf.references() end)
			      nnoremap("<leader>vrn", function() vim.lsp.buf.rename() end)
			      inoremap("<C-h>", function() vim.lsp.buf.signature_help() end)
        end,
    }, _config or {})
end

require("lspconfig").intelephense.setup(config())
