local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system {"git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim",
                                  install_path}
    print "Installing packer close and reopen Neovim..."
    vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

packer.init {
    display = {
        open_fn = function()
            return require("packer.util").float {
                border = "rounded"
            }
        end
    }
}

vim.g.coc_global_extensions = {"coc-lua", "coc-html", "coc-cssmodules", "coc-tsserver", "coc-json", "coc-css",
                               "coc-svg", "coc-marketplace", "coc-prettier", "coc-eslint", "coc-highlight"}

return packer.startup(function(use)
    use "wbthomason/packer.nvim"

    use "nvim-lua/popup.nvim"

    use "nvim-lua/plenary.nvim"

    use "BurntSushi/ripgrep"

    use "github/copilot.vim"

    use "phaazon/hop.nvim"

    use "marko-cerovac/material.nvim"

    use "folke/which-key.nvim"

    use {
        "rcarriga/nvim-notify",
        config = function()
            local status_ok, notify = pcall(require, "notify")
            if not status_ok then
                return
            end

            notify.setup()
            vim.notify = notify
        end
    }

    use {
        "neoclide/coc.nvim",
        branch = "release"
    }

    use {
        "goolord/alpha-nvim",
        requires = {'kyazdani42/nvim-web-devicons'}
    }

    use "nvim-telescope/telescope.nvim"

    use {
        "nvim-telescope/telescope-fzf-native.nvim",
        run = "make"
    }

    use "nvim-telescope/telescope-file-browser.nvim"

    use "fannheyward/telescope-coc.nvim"

    use "sudormrfbin/cheatsheet.nvim"

    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate"
    }

    use {
        "windwp/nvim-autopairs",
        config = function()
            local status_ok, autopairs = pcall(require, "autopairs")
            if not status_ok then
                return
            end

            autopairs.setup {}
        end
    }

    use {
        "windwp/nvim-ts-autotag",
        config = function()
            local status_ok, ts_autotag = pcall(require, "nvim-ts_autotag")
            if not status_ok then
                return
            end

            ts_autotag.setup()
        end
    }

    use {
        "numToStr/Comment.nvim",
        config = function()
            local status_ok, comment = pcall(require, "Comment")
            if not status_ok then
                return
            end

            comment.setup()
        end
    }

    use {
        "lewis6991/gitsigns.nvim",
        config = function()
            local status_ok, gitsigns = pcall(require, "gitsigns")
            if not status_ok then
                return
            end

            gitsigns.setup()
        end
    }

    use {
        'nvim-lualine/lualine.nvim',
        requires = {
            'kyazdani42/nvim-web-devicons',
            opt = true
        }
    }

    use {
        "akinsho/bufferline.nvim",
        requires = "kyazdani42/nvim-web-devicons"
    }

    use "famiu/bufdelete.nvim"

    use {
        "akinsho/toggleterm.nvim",
        tag = 'v1.*'
    }

    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
