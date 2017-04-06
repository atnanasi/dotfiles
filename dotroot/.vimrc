" For vim-plug
if has('vim_starting')
  set rtp+=~/.vim/plugged/vim-plug
  if !isdirectory(expand('~/.vim/plugged/vim-plug'))
    echo 'install vim-plug...'
    call system('mkdir -p ~/.vim/plugged/vim-plug')
    call system('git clone https://github.com/junegunn/vim-plug.git ~/.vim/plugged/vim-plug/autoload')
  end
endif

call plug#begin('~/.vim/plugged')
  Plug 'junegunn/vim-plug',
        \ {'dir': '~/.vim/plugged/vim-plug/autoload'}
  Plug 'altercation/vim-colors-solarized'
call plug#end()

set title
set number
set ambiwidth=double
set tabstop=4
set smartindent
set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
set nrformats-=octal
set hidden
set whichwrap=b,s,[,],<,>
set wildmenu wildmode=list:full
syntax on
set nohlsearch
set cursorline
set laststatus=2
set statusline=%F%r%h%=

" For Solarized-colors
set background=dark
colorscheme solarized

" For Linux GVIM
set guifont=NasuM\ 12
