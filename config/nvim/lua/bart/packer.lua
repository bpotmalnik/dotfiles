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
    use("hrsh7th/cmp-nvim-lsp")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/nvim-cmp")
    use("onsails/lspkind-nvim")
    use("simrat39/symbols-outline.nvim")
    use("L3MON4D3/LuaSnip")
    use("saadparwaiz1/cmp_luasnip")

    use("ThePrimeagen/harpoon")
end)
