call plug#begin('~/.vim/plugged')
  " general
  Plug 'ellisonleao/gruvbox.nvim', {'branch': 'main'}
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'cuducos/yaml.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.5' }
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'mbbill/undotree'
  Plug 'franbach/miramare'
  Plug 'easymotion/vim-easymotion'
  Plug 'preservim/nerdtree'
  Plug 'jistr/vim-nerdtree-tabs'

  " code general
  Plug 'Chiel92/vim-autoformat'
  Plug 'Shougo/vimproc.vim'
  Plug 'tpope/vim-commentary'
  Plug 'scrooloose/syntastic'
  Plug 'Chiel92/vim-autoformat'
  Plug 'vim-scripts/bufkill.vim' " provides BD, BW, BUN
  Plug 'tpope/vim-surround'
  Plug 'yegappan/grep'
  Plug 'alvan/vim-closetag'
  Plug 'prettier/vim-prettier', {
        \ 'do': 'yarn install',
        \ 'for': ['javascript', 'typescript', 'css', 'scss', 'json', 'markdown', 'yaml', 'html'] }
  Plug 'kristijanhusak/vim-carbon-now-sh'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'liuchengxu/vista.vim'
  Plug 'dense-analysis/ale'

  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'

  Plug 'vim-test/vim-test'


  " git
  Plug 'tpope/vim-fugitive'

  " UI
  " Plug 'catppuccin/nvim', {'as': 'catppuccin'}
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  " js / ts / coffeescript
  Plug 'leafgarland/typescript-vim'
  Plug 'joukevandermaas/vim-ember-hbs'
  Plug 'Quramy/tsuquyomi'
  Plug 'kchmck/vim-coffee-script'

  " ruby / rails
  Plug 'tpope/vim-rails'
  Plug 'tpope/vim-endwise' " adds end to if, do, def ...
  Plug 'vim-ruby/vim-ruby'
  Plug 'tpope/vim-bundler'
  Plug 'ngmy/vim-rubocop'

  " go
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

  " rust
  Plug 'rust-lang/rust.vim'

  " tex
  Plug 'lervag/vimtex'
  Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
  Plug 'skywind3000/asyncrun.vim'
call plug#end()
