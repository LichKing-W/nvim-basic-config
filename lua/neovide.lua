-- font
vim.o.guifont = "Maple Mono NL NF CN"

-- 行间距
vim.opt.linespace = 0
 
-- 窗口模糊效果（仅限 macOS）
vim.g.neovide_window_blurred = true
 
-- 浮动窗口的模糊半径
vim.g.neovide_floating_blur_amount_x = 2.0
vim.g.neovide_floating_blur_amount_y = 2.0
 
-- 浮动窗口的阴影效果
vim.g.neovide_floating_shadow = true
vim.g.neovide_floating_z_height = 10
vim.g.neovide_light_angle_degrees = 45
vim.g.neovide_light_radius = 5
 
-- 窗口透明度
vim.g.neovide_transparency = 0.8
 
-- 输入时隐藏鼠标
vim.g.neovide_hide_mouse_when_typing = false
 
-- 刷新率
vim.g.neovide_refresh_rate = 60
 
-- 空闲时的刷新率
vim.g.neovide_refresh_rate_idle = 5
 
-- 强制重绘
vim.g.neovide_no_idle = true
 
-- 记住之前的窗口大小
vim.g.neovide_remember_window_size = true
 
-- 开启性能分析器
vim.g.neovide_profiler = false
 
-- 启用 IME 输入
vim.g.neovide_input_ime = true
 
-- 触控屏幕的死区
vim.g.neovide_touch_deadzone = 6.0
 
-- 在插入模式中动画光标
vim.g.neovide_cursor_animate_in_insert_mode = true
 
-- 切换到命令行时动画光标
vim.g.neovide_cursor_animate_command_line = true
 
-- 未聚焦时光标轮廓宽度
vim.g.neovide_cursor_unfocused_outline_width = 0.125

if vim.g.neovide then
  vim.schedule(function()
    vim.cmd "NeovideFocus"
  end)
end

if vim.g.neovide then
  vim.keymap.set('n', '<D-s>', ':w<CR>') -- Save
  vim.keymap.set('v', '<D-c>', '"+y') -- Copy
  vim.keymap.set('n', '<D-v>', '"+P') -- Paste normal mode
  vim.keymap.set('v', '<D-v>', '"+P') -- Paste visual mode
  vim.keymap.set('c', '<D-v>', '<C-R>+') -- Paste command mode
  vim.keymap.set('i', '<D-v>', '<ESC>l"+Pli') -- Paste insert mode
end

-- Allow clipboard copy paste in neovim
vim.api.nvim_set_keymap('', '<D-v>', '+p<CR>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('!', '<D-v>', '<C-R>+', { noremap = true, silent = true})
vim.api.nvim_set_keymap('t', '<D-v>', '<C-R>+', { noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '<D-v>', '<C-R>+', { noremap = true, silent = true})
