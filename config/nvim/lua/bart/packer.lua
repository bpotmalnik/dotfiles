return require("packer").startup(function()
    use("wbthomason/packer.nvim")
    use("catppuccin/nvim", {as="catppuccin"})

    use("nvim-lua/plenary.nvim")
    use("nvim-lua/popup.nvim")
    use("nvim-telescope/telescope.nvim")

    use("nvim-lualine/lualine.nvim", {
        require = {"kyazdani42/nvim-web-devicons", opt = true}
    })
    use("nvim-treesitter/nvim-treesitter", {
        run = ":TSUpdate"
    })
    -- Add context when scrolling
    use("nvim-treesitter/nvim-treesitter-context")

    use("neovim/nvim-lspconfig")
    use("folke/lua-dev.nvim")
    use("hrsh7th/cmp-nvim-lsp")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/nvim-cmp")
    use("onsails/lspkind-nvim")
    use("simrat39/symbols-outline.nvim")
    use("L3MON4D3/LuaSnip")
    use("saadparwaiz1/cmp_luasnip")

    use("ThePrimeagen/harpoon")

    use("dart-lang/dart-vim-plugin")

    use("akinsho/flutter-tools.nvim", {
      requires = {
        "nvim-lua/plenary.nvim"
      }
    })
    use("mfussenegger/nvim-dap")
    use("nvim-telescope/telescope-dap.nvim")
    use("nvim-neotest/neotest", {
      requires = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
        "antoinemadec/FixCursorHold.nvim",
      }
    })
    use("olimorris/neotest-phpunit")
    use("sidlatau/neotest-dart")

    use("TimUntersberger/neogit", {
      requires = {
        "nvim-lua/plneary.nvim"
      }
    })
end)
