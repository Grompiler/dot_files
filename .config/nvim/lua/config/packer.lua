-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
    -- Packer can manage itself
    use "wbthomason/packer.nvim"
    use {
        "nvim-telescope/telescope.nvim", tag = "0.1.4",
        requires = { { "nvim-lua/plenary.nvim" } }
    }
    use({
        "rebelot/kanagawa.nvim",
        as = "kanagawa",
        config = function()
            vim.cmd("colorscheme kanagawa")
        end
    })
    use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
    use {
        "VonHeikemen/lsp-zero.nvim",
        branch = "v2.x",
        requires = {
            -- LSP Support
            { "neovim/nvim-lspconfig" }, -- Required
            {
                -- Optional
                "williamboman/mason.nvim",
                run = function()
                    pcall(vim.cmd, "MasonUpdate")
                end,
            },
            { "williamboman/mason-lspconfig.nvim" }, -- Optional

            -- Autocompletion
            { "hrsh7th/nvim-cmp" },     -- Required
            { "hrsh7th/cmp-path" },     -- Convenient
            { "hrsh7th/cmp-nvim-lsp" }, -- Required
            { "L3MON4D3/LuaSnip" },     -- Required
        }
    }
    use {
        "tpope/vim-fugitive"
    }
    use {
        "nvim-telescope/telescope-file-browser.nvim",
        requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons" }
    }
    use {
        "nvim-telescope/telescope-project.nvim",
        requires = { "nvim-telescope/telescope-file-browser.nvim", "nvim-telescope/telescope.nvim",
            "nvim-lua/plenary.nvim" }
    }
    use {
        "lewis6991/gitsigns.nvim",
    }
    use {
        "numToStr/Comment.nvim",
    }
    use {
        "nvim-lualine/lualine.nvim",
        requires = { "nvim-tree/nvim-web-devicons", opt = true }
    }
    use {
        "windwp/nvim-autopairs",
    }
    use {
        "ThePrimeagen/harpoon"
    }
    use {
        "phaazon/hop.nvim",
        branch = "v2",
    }
    use {
        "folke/flash.nvim",
    }
    use {
        "stevearc/oil.nvim",
    }
end)
