local packer = require("packer")
packer.startup(
    function(use)
        -- Packer 可以管理自己本身
        use 'wbthomason/packer.nvim'
        -- 你的插件列表...
        --------------------- colorschemes --------------------
        -- tokyonight
        use("folke/tokyonight.nvim")
        -------------------------------------------------------
        -- Packer 可以升级自己
        use("wbthomason/packer.nvim")
        -------------------------- plugins -------------------------------------------
        -- nvim-tree (新增)
        use({ "kyazdani42/nvim-tree.lua", requires = "kyazdani42/nvim-web-devicons" })
        -- nvim-tree (新增)
        use({ "kyazdani42/nvim-tree.lua", requires = "kyazdani42/nvim-web-devicons" })
        -- bufferline (新增)
        use({ "akinsho/bufferline.nvim", requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" } })
        -- lualine (新增)
        use({ "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons" } })
        use("arkav/lualine-lsp-progress")
        -- telescope （新增）
        use { 'nvim-telescope/telescope.nvim', requires = { "nvim-lua/plenary.nvim" } }
        -- telescope extensions
        use "LinArcX/telescope-env.nvim"
        -- dashboard-nvim (新增)
        use("glepnir/dashboard-nvim")
        -- project
        use("ahmedkhalf/project.nvim")
        -- treesitter （新增）
        use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })

        --------------------- LSP --------------------
        -- Lspconfig
        use({ "neovim/nvim-lspconfig" })
        -- 补全引擎
        use("hrsh7th/nvim-cmp")
        -- snippet 引擎
        use("hrsh7th/vim-vsnip")
        -- 补全源
        use("hrsh7th/cmp-vsnip")
        use("hrsh7th/cmp-nvim-lsp") -- { name = nvim_lsp }
        use("hrsh7th/cmp-buffer") -- { name = 'buffer' },
        use("hrsh7th/cmp-path") -- { name = 'path' }
        use("hrsh7th/cmp-cmdline") -- { name = 'cmdline' }

        -- 常见编程语言代码段
        use("rafamadriz/friendly-snippets")
        --coc
        use {'neoclide/coc.nvim', branch = 'release'}
        use({ "williamboman/nvim-lsp-installer", commit = "36b44679f7cc73968dbb3b09246798a19f7c14e0" })

        -- ui (新增)
        use("onsails/lspkind-nvim")

        -- indent-blankline
        use("lukas-reineke/indent-blankline.nvim")
        -- 代码格式化
        -- use("mhartington/formatter.nvim")
        use({ "jose-elias-alvarez/null-ls.nvim", requires = "nvim-lua/plenary.nvim" })

        -- install without yarn or npm

        use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

        use 'b3nj5m1n/kommentary'

        use { "untitled-ai/jupyter_ascending.vim" }

        config = {
            display = {
                open_fn = function()
                    return require("packer.util").float({ border = "single" })
                end,
            },
        }
    end)

-- 每次保存 plugins.lua 自动安装插件
pcall(
  vim.cmd,
  [[
    augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
  ]]
)
