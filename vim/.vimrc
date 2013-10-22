set nocompatible

syntax enable

" vundle settings -- begin
filetype on
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" vundle bundles -- begin
Bundle 'Raimondi/delimitMate'
Bundle 'SirVer/ultisnips'
Bundle 'Valloric/YouCompleteMe'
Bundle 'altercation/vim-colors-solarized'
Bundle 'bling/vim-airline'
Bundle 'bling/vim-bufferline'
Bundle 'editorconfig/editorconfig-vim'
Bundle 'gmarik/vundle'
Bundle 'junegunn/vim-easy-align'
Bundle 'justinmk/vim-sneak'
Bundle 'kien/ctrlp.vim'
Bundle 'marijnh/tern_for_vim'
Bundle 'mattn/emmet-vim'
Bundle 'mileszs/ack.vim'
Bundle 'moll/vim-bbye'
Bundle 'mustache/vim-mustache-handlebars'
Bundle 'osyo-manga/vim-over'
Bundle 'pangloss/vim-javascript'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'sjl/gundo.vim'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-eunuch'
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
let g:bufferline_show_bufnr = 0
let g:markdown_fenced_languages = ['js=javascript', 'javascript', 'css', 'json=javascript']
let g:mustache_abbreviations = 1
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

let mapleader = ' '
let maplocalleader = '  '

colorscheme solarized

set autoindent
set autoread
set background=dark
set backspace=indent,eol,start
set cryptmethod=blowfish
set complete=.,w,b,u,t,i
set directory=$HOME/.vim/swapfiles//,.,~/tmp,/var/tmp,/tmp
set encoding=utf-8
set expandtab
set hidden
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set listchars=tab:⇒\ ,eol:↩︎,trail:•,nbsp:•
set mouse=a
set nobackup
set nofoldenable
set nolist
set noshowmode
set nowritebackup
set nrformats=
set number
set ruler
set scrolloff=3
set shiftwidth=2
set showbreak=⤿
set showcmd
set showmatch
set smartcase
set smarttab
set softtabstop=2
set spell
set spelllang=en_us
set splitbelow
set splitright
set tabstop=2
set title
set ttimeout
set ttimeoutlen=50
set ttyfast
set visualbell
set wildignore=log/**,node_modules/**,target/**,tmp/**
set wildmenu
set wildmode=longest,list,full
set wrap

vnoremap <silent> <Enter> :EasyAlign<Enter>
nnoremap ? :<C-u>OverCommandLine<cr>

nmap <leader>G :GundoToggle<cr>
nmap <leader>P :CtrlPClearCache<cr>:CtrlP<cr>
nmap <leader>a :Ack<space>
nmap <leader>b :CtrlPBuffer<cr>
nmap <leader>d :NERDTreeToggle<cr>
nmap <leader>f :NERDTreeFind<cr>
nmap <leader>p :CtrlP<cr>
nmap <leader>r :CtrlPMRUFiles<cr>

function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber
  else
    set relativenumber
  endif
endfunc

nnoremap <leader>nt :call NumberToggle()<cr>

if has("unix")
  let s:uname = system("uname")
  if s:uname == "Darwin\n"
    nnoremap <leader>m :silent !open -a Marked.app '%:p'<cr>
  endif
endif

" Change tabstop, softtabstop and shiftwidth to the same value
function! ChangeTabs()
  let l:tabstop = 1 * input('set tabstop = softtabstop = shiftwidth = ')
  if l:tabstop > 0
    let &l:sts = l:tabstop
    let &l:ts = l:tabstop
    let &l:sw = l:tabstop
  endif
  call SummarizeTabs()
endfunction

function! SummarizeTabs()
  try
    echohl ModeMsg
    echon 'tabstop='.&l:ts
    echon ' shiftwidth='.&l:sw
    echon ' softtabstop='.&l:sts
    if &l:et
      echon ' expandtab'
    else
      echon ' noexpandtab'
    endif
  finally
    echohl None
  endtry
endfunction

nnoremap <leader>ct :call ChangeTabs()<cr>
nnoremap <leader>st :call SummarizeTabs()<cr>

nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gc :Gcommit<cr>
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gl :Glog<cr>
nnoremap <leader>gp :Git push<cr>
nnoremap <leader>gr :Gread<cr>
nnoremap <leader>gs :Git status -sb<cr>
nnoremap <leader>gw :Gwrite<cr>

nnoremap  <leader>bd :Bdelete<cr>

nnoremap <silent> <C-l> :<C-u>nohlsearch<cr><C-l>
nnoremap Y y$

map j gj
map k gk

vmap > >gv
vmap < <gv

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

autocmd BufEnter *gitconfig setf gitconfig
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
autocmd BufEnter *.json setl filetype=javascript
autocmd BufEnter *.less setl filetype=less
autocmd BufRead,BufNewFile *.handlebars,*.hbs set ft=html syntax=handlebars
autocmd InsertLeave * set nopaste
autocmd VimResized * :wincmd =
autocmd WinEnter * set cursorline
autocmd WinLeave * set nocursorline

if exists('$TMUX')
  set ttymouse=xterm2
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

set undodir=~/.vim/backups
set undofile

xnoremap * :<C-u>call <SID>VSetSearch()<CR>/<C-R>=@/<CR><CR>
xnoremap # :<C-u>call <SID>VSetSearch()<CR>?<C-R>=@/<CR><CR>
function! s:VSetSearch()
  let temp = @s
  norm! gv"sy
  let @/ = '\V' . substitute(escape(@s, '/\'), '\n', '\\n', 'g')
  let @s = temp
endfunction

match Error /\s\+$/
