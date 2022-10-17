local Remap = require("bart.keymap")
local nnoremap = Remap.nnoremap
local inoremap = Remap.inoremap

local cmp = require("cmp")
local lspkind = require("lspkind")

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require("neodev").setup()

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
        { name = 'luasnip'},
        { name = 'nvim_lsp'},
        { name = 'path'},
        { name = 'buffer', keywoard_length = 5},
    },
    experimental = {
        native_menu = false,
        ghost_text = true,
    }
})

local function config(_config)
    return vim.tbl_deep_extend("force",{
        capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities()),
        on_attach = function()
            nnoremap("gd", function() vim.lsp.buf.definition() end)
            nnoremap("gD", function() vim.lsp.buf.declaration() end)
            nnoremap("gy", function() vim.lsp.buf.type_definition() end)
            nnoremap("K", function() vim.lsp.buf.hover() end)
			      nnoremap("gws", function() vim.lsp.buf.workspace_symbol() end)
			      nnoremap("gf", function() vim.diagnostic.open_float() end)
			      nnoremap("[d", function() vim.diagnostic.goto_next() end)
			      nnoremap("]d", function() vim.diagnostic.goto_prev() end)
			      nnoremap("ga", function() vim.lsp.buf.code_action() end)
            nnoremap("grr", function() vim.lsp.buf.references() end)
			      nnoremap("grn", function() vim.lsp.buf.rename() end)
			      inoremap("<C-h>", function() vim.lsp.buf.signature_help() end)
        end,
    }, _config or {})
end

require("lspconfig").phpactor.setup(config())
require("lspconfig").luau_lsp.setup(config())
require("flutter-tools").setup({
  fvm = true,
  dev_log = {
    enabled = false,
  },
  debugger = {
    enabled = true,
    run_via_dap = true,
    register_configurations = function(_)
      require("dap").configurations.dart = {}
      require("dap.ext.vscode").load_launchjs()
    end,
  },
  lsp = config()
})
