" Fix encode
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,iso-2022-jp,euc-jp,sjis
set fileformats=unix,dos,mac
scriptencoding utf-8
set ambiwidth=double

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
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'tpope/vim-fugitive'
    Plug 'Yggdroot/indentLine'
    Plug 'scrooloose/nerdtree'
    Plug 'jistr/vim-nerdtree-tabs'
    Plug 'xuyuanp/nerdtree-git-plugin'
call plug#end()

" ; to : (for US Keyboard)
noremap ; :

" Set terminal title
set title

" Show line number
set number

" Tab
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent

" Visible spaces
set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%

" Remove number format
set nrformats-=octal

" Don't notify when yet save buffer
set hidden

" Jump line
set whichwrap=b,s,h,l,[,],<,>,~
nnoremap j gj
nnoremap k gk
nnoremap <down> gj
nnoremap <up> gk

" Brackets jump
set showmatch
source $VIMRUNTIME/macros/matchit.vim

" Enable backspace
set backspace=indent,eol,start

" Complete mode
set wildmenu wildmode=list:full
set history=5000

" Syntax highlight
syntax on

" No line wrap
set nowrap

" Visible cursor line
set cursorline

" Search
set incsearch
set ignorecase
set smartcase
set hlsearch
" Press ESC 2 times to switch highlight
nnoremap <silent><Esc><Esc> :<C-u>set nohlsearch!<CR>

" NerdTree
let g:NERDTreeShowBookmarks=0
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable  = '▶'
let g:NERDTreeDirArrowCollapsible = '▼'
let g:nerdtree_tabs_open_on_console_startup = 0
let g:nerdtree_tabs_open_on_new_tab = 1
map <C-\> :NERDTreeTabsToggle<CR><Esc>

" Fix paste from terminal
if &term =~ "xterm"
    let &t_SI .= "\e[?2004h"
    let &t_EI .= "\e[?2004l"
    let &pastetoggle = "\e[201~"

    function XTermPasteBegin(ret)
        set paste
        return a:ret
    endfunction

    inoremap <special> <expr> <Esc>[200~ XTermPasteBegin("")
endif

" Tab
nnoremap    [Tag]   <Nop>
nmap    t [Tag]
" tc 新しいタブを一番右に作る
map <silent> [Tag]c :tablast <bar> tabnew<CR>
" tx タブを閉じる
map <silent> [Tag]x :tabclose<CR>
" tn 次のタブ
map <silent> [Tag]n :tabnext<CR>
" tp 前のタブ
map <silent> [Tag]p :tabprevious<CR>

" Fir Airline
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme = 'luna'

