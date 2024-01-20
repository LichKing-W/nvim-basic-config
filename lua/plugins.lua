return require('packer').startup(function()
  -- Packer
  use 'wbthomason/packer.nvim'
  -- nvim-tree
  use {
       'kyazdani42/nvim-tree.lua',
       requires = 'kyazdani42/nvim-web-devicons'
    }
  -- bufferline
  use {
       'akinsho/bufferline.nvim', tag = "*", 
      requires = 'nvim-tree/nvim-web-devicons'
    }
  -- treesitter
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  -- theme
  -- use 'folke/tokyonight.nvim'
  use 'sainnhe/gruvbox-material'
  -- autocom
  -- use {'neoclide/coc.nvim', branch = 'release'}
  -- nvim-lspconfig
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }
  use {
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-vsnip',    -- { name = 'vsnip' }
    'hrsh7th/vim-vsnip',
    'onsails/lspkind-nvim',
    }
  -- ()autocom
  use 'jiangmiao/auto-pairs'
  -- comment
  use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
    }
  -- Telescope
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim', 'BurntSushi/ripgrep', 'sharkdp/fd'} }
    }
  -- telescope project extension
  use {
    "ahmedkhalf/project.nvim",
    config = function()
        require("project_nvim").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
      exclude_dirs = {
                    "~", "c:/Users/64343"
                    }
    }
  end
    }
  -- surround
  use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    -- config = function()
    --     require("nvim-surround").setup({
    --         -- Configuration here, or leave empty to use defaults
    --         keymaps = {
    --             visual = 'Z',
    --             visual_line = 'gZ',
    --         },
    --     })
    --end
    })
  -- noice 弹窗
  use {"folke/noice.nvim",
        requires = {"MunifTanjim/nui.nvim", "rcarriga/nvim-notify"}
    }
  -- delete buffer
  use 'famiu/bufdelete.nvim'
  -- leap
  use 'ggandor/leap.nvim'
  -- rainbow 括号
  use 'HiPhish/nvim-ts-rainbow2'
  -- file browser
  use {
      "nvim-telescope/telescope-file-browser.nvim",
      requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
  }
  -- dashboard
    use {
        'nvimdev/dashboard-nvim',
        event = 'VimEnter',
        config = function()
            require('dashboard').setup {
                -- config
                theme = 'hyper',
                shortcut_type = 'number',
                config = {
                    -- week_header = {
                    --     enable = true,
                    -- },
                    header = {
-- https://patorjk.com/software/taag/#p=display&f=ANSI%20Shadow&t=bk-nvim
'                                                      ',
'                                                      ',
'██████╗ ██╗  ██╗     ███╗   ██╗██╗   ██╗██╗███╗   ███╗',
'██╔══██╗██║ ██╔╝     ████╗  ██║██║   ██║██║████╗ ████║',
'██████╔╝█████╔╝█████╗██╔██╗ ██║██║   ██║██║██╔████╔██║',
'██╔══██╗██╔═██╗╚════╝██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║',
'██████╔╝██║  ██╗     ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║',
'╚═════╝ ╚═╝  ╚═╝     ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝',
'                                                      ',
'                                                      ',
                    }, 
                    packages = {enable = false},
                    shortcut = {  
                        { desc = '󰊳 Update', group = '@property', action = 'PackerSync', key = 'u' },
                        {
                            desc = ' Files',
                            group = 'Label',
                            action = 'Telescope find_files',
                            key = 'f',
                        },
                        {
                            desc = ' Projects',
                            action = 'Telescope projects',
                            key = 'p',
                        },
                        {
                            desc = ' Plugins',
                            group = 'Number',
                            action = 'edit C:\\Users\\64343\\AppData\\Local\\nvim\\lua\\plugins.lua',
                            key = 'd',
                        },
                    },
                    project = { enable = false },
                    mru = {limit = 9},
                    footer = {
                        '',
                        '',
                        "⚔️ Nobody dies a virgin, life fucks us all.",
                    }
                },
            }
        end,
        requires = {'nvim-tree/nvim-web-devicons'}
    }
end)
