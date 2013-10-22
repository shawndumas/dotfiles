set nocompatible

syntax enable

" vundle settings -- begin
filetype on
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" vundle bundles -- begin
Bundle 'SirVer/ultisnips'
Bundle 'Valloric/YouCompleteMe'
Bundle 'altercation/vim-colors-solarized'
Bundle 'bling/vim-airline'
Bundle 'gmarik/vundle'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'kien/ctrlp.vim'
Bundle 'marijnh/tern_for_vim'
Bundle 'mattn/emmet-vim'
Bundle 'mileszs/ack.vim'
Bundle 'nono/vim-handlebars'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-speeddating'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
" vundle bundles -- end

filetype plugin indent on
" vundle settings -- end

" integration of UltiSnips and YCM -- begin
let g:ycm_key_list_select_completion = ['<C-TAB>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-S-TAB>', '<Up>']
" integration of UltiSnips and YCM -- end

let g:airline_powerline_fonts = 1
let g:bufferline_echo = 0
let g:syntastic_auto_jump = 1
let g:syntastic_check_on_open = 1
let g:syntastic_echo_current_error = 1
let g:syntastic_enable_balloons = 1
let g:syntastic_enable_signs = 1
let g:syntastic_error_symbol = '❗'
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_style_error_symbol = '❗'
let g:syntastic_style_warning_symbol = '❕'
let g:syntastic_warning_symbol = '❕'
let g:tern_map_keys = 1
let g:tern_show_argument_hints = 'on_hold'
let g:user_emmet_leader_key = '<c-e>'

let mapleader = ','
let maplocalleader = ',,'

colorscheme solarized

set autoindent
set autoread
set background=dark
set backspace=indent,eol,start
set directory=$HOME/.vim/tmp//,.
set encoding=utf-8
set expandtab
set hidden
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set nolist
set listchars=tab:▸\ ,eol:¬,trail:·,nbsp:·
set mouse=a
set nobackup
set nofoldenable
set noshowmode
set nowritebackup
set number
set ruler
set scrolloff=3
set shiftwidth=2
set showcmd
set showmatch
set smartcase
set smarttab
set softtabstop=2
set spell
set spelllang=en_us
set splitbelow
set splitright
set t_Co=256
set tabstop=8
set title
set ttimeout
set ttimeoutlen=50
set ttyfast
set visualbell
set wildignore=log/**,node_modules/**,target/**,tmp/**
set wildmenu
set wildmode=list:longest
set wrap

nmap <leader>a :Ack<space>
nmap <leader>b :CtrlPBuffer<CR>
nmap <leader>d :NERDTreeToggle<CR>
nmap <leader>f :NERDTreeFind<CR>
nmap <leader>p :CtrlP<CR>
nmap <leader>P :CtrlPClearCache<CR>:CtrlP<CR>

" plugin settings
let g:ctrlp_match_window = 'order:ttb,max:20'
let g:NERDSpaceDelims=1

" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  let g:ackprg = 'ag --nogroup --column'

  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

autocmd BufEnter *.json setl filetype=javascript
autocmd BufEnter *.less setl filetype=less
autocmd BufEnter *.{md,markdown,mdown,mkd,mkdn} set filetype=markdown
autocmd BufEnter *gitconfig setf gitconfig
autocmd BufRead,BufNewFile *.handlebars,*.hbs set ft=html syntax=handlebars
autocmd VimResized * :wincmd =
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

if exists('$TMUX')
  set ttymouse=xterm2
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

if has('undodir')
  set undodir=~/.vim/backups
endif

if has('undofile')
  set undofile
endif
