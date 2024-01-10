-- if has('termguicolors')
vim.cmd [[set termguicolors]]
-- endif

-- For dark version.
vim.cmd  [[set background=dark]]
-- Set contrast.
-- This configuration option should be placed before `colorscheme gruvbox-material`.
-- Available values: 'hard', 'medium'(default), 'soft'
vim.g.gruvbox_material_background = 'soft'

-- For better performance
vim.g.gruvbox_material_better_performance = 1

-- For transparent background
vim.g.gruvbox_material_transparent_background = 1

vim.cmd [[colorscheme gruvbox-material]]

