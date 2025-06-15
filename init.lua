-- 基础配置
require("basic")
-- neovide
require("neovide")
-- 快捷键映射
require("keybindings")
-- lazy插件管理
require("config.lazy")
require("lazy").setup("plugins")
-- 主题设置
require("gruvbox")
-- 自动命令
require("autocmds")
-- 插件配置
require("plugin-config.nvim-tree")
require("plugin-config.bufferline")
require("plugin-config.nvim-treesitter")
require("plugin-config.mason")
require("plugin-config.nvim-cmp")
require("plugin-config.comment")
require("plugin-config.nvim-surround")
require("plugin-config.telescope")
require("plugin-config.leap")
require("plugin-config.rainbow")
-- require("plugin-config.rusttools")
require("plugin-config.ibl")
require("plugin-config.mason-null-ls")
require("plugin-config.nvim-dap")
require("plugin-config.leetcode")
require("plugin-config.smear-cursor")
-- require("plugin-config.dashboard") dashboard在plugins.lua中配置好即可

