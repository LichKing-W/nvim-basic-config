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
  use 'folke/tokyonight.nvim'
  -- autocom
  use {'neoclide/coc.nvim', branch = 'release'}
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
    requires = { {'nvim-lua/plenary.nvim'} }
    }
  -- dashboard
    use {
        'nvimdev/dashboard-nvim',
        event = 'VimEnter',
        config = function()
            require('dashboard').setup {
                -- config
                theme = 'hyper',
                config = {
                    -- week_header = {
                    --     enable = true,
                    -- },
                    header = {
'                               ',
'                               ',
'  .o888P     Y8o8Y     Y888o.  ',
' d88888      88888      88888b ',
'd888888b_  _d88888b_  _d888888b',
'8888888888888888888888888888888',
'8888888888888888888888888888888',
'YJGS8P"Y888P"Y888P"Y888P"Y8888P',
' Y888   \'8\'   Y8P   \'8\'   888Y ',
' \'8o          V          o8\'  ',
'   `                     `     ',
'                               ',
'                               ',
                    }, 
                    
                    shortcut = {
                        { desc = '󰊳 Update', group = '@property', action = 'PackerSync', key = 'u' },
                        {
                            icon = ' ',
                            icon_hl = '@variable',
                            desc = 'Files',
                            group = 'Label',
                            action = 'Telescope find_files',
                            key = 'f',
                        },
                        {
                            desc = ' Apps',
                            group = 'DiagnosticHint',
                            action = 'Telescope app',
                            key = 'a',
                        },
                        {
                            desc = ' dotfiles',
                            group = 'Number',
                            action = 'Telescope dotfiles',
                            key = 'd',
                        },
                    },
                },
            }
        end,
        requires = {'nvim-tree/nvim-web-devicons'}
    }
end)
