call plug#begin('~/.vim/plugged')
  " general
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'mbbill/undotree'
  Plug 'franbach/miramare'

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


  " git
  Plug 'tpope/vim-fugitive'

  " UI
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

  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
call plug#end()
