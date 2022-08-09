-- 基础设置
require('basic')
-- 快捷键映射
require("keybindings")
-- Packer 插件管理
require("plugins")
-- 主题设置
require("colorscheme")
-- 插件配置
require("plugin-config.nvim-tree")
require("plugin-config.bufferline")
require("plugin-config.lualine")
require("plugin-config.telescope")
require("plugin-config.dashboard")
require("plugin-config.project")
require("plugin-config.nvim-treesitter")
-- 内置LSP
require'lspconfig'.clangd.setup{}
require'lspconfig'.ccls.setup{}
require("lspconfig.cmp")

require("lspconfig.ui.ui") -- 新增
require("plugin-config.indent-blankline")

-- require("lsp.formatter")
require("lspconfig.null-ls")
require('kommentary.config').use_extended_mappings("default", {
    prefer_single_line_comments = true,
})


local set = vim.opt -- set options
set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4
