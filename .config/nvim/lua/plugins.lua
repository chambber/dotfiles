return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  -- common
  use 'tpope/vim-fugitive' -- Git commands
  use 'vim-airline/vim-airline' -- powerline
  use 'vim-airline/vim-airline-themes'
  use 'andymass/vim-matchup' -- matching parens and more
  use 'marko-cerovac/material.nvim'

  use { 'lewis6991/gitsigns.nvim', -- git added/removed in sidebar + inline blame
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('gitsigns').setup({
        current_line_blame = true
      })
    end
  }

  -- general dev
  use 'neovim/nvim-lspconfig'
  use 'kabouzeid/nvim-lspinstall'
  use 'glepnir/lspsaga.nvim'
  use 'hrsh7th/nvim-compe'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'scrooloose/nerdcommenter' -- commenting shortcuts

  require'nvim-treesitter.configs'.setup {
    highlight = {
      enable = true
    }
  }

  vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
      virtual_text = false
    }
  )

  require'lspsaga'.init_lsp_saga {
    error_sign = '!',
    warn_sign = '^',
    hint_sign =  '?',
    infor_sign = '~',
    border_style = "round",
    code_action_prompt = {
      enable = false
    }
  }
  
  -- search
  use { 'nvim-telescope/telescope.nvim',
    requires = { { 'nvim-lua/popup.nvim' }, { 'nvim-lua/plenary.nvim' } }
  }
  use 'tpope/vim-eunuch' -- warpper UNIX commands
  use 'tpope/vim-surround' -- surround characters shortcuts
  use 'tpope/vim-vinegar' -- file browser
  use 'kyazdani42/nvim-web-devicons' -- icons when searching

  -- testing
  use 'kassio/neoterm' -- terminal wrapper
  use 'janko-m/vim-test' -- testing commands

  -- javascript
  use { 'HerringtonDarkholme/yats.vim', ft = 'typescript' }
end)
