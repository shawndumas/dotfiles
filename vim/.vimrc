set nocompatible

syntax enable

filetype on
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'altercation/vim-colors-solarized'
Plugin 'AndrewRadev/splitjoin.vim'
Plugin 'bling/vim-airline'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'gmarik/Vundle.vim'
Plugin 'gregsexton/gitv'
Plugin 'groenewege/vim-less'
Plugin 'honza/vim-snippets'
Plugin 'junegunn/vim-easy-align'
Plugin 'justinmk/vim-sneak'
Plugin 'kana/vim-textobj-datetime'
Plugin 'kana/vim-textobj-entire.git'
Plugin 'kana/vim-textobj-indent.git'
Plugin 'kana/vim-textobj-lastpat'
Plugin 'kana/vim-textobj-line.git'
Plugin 'kana/vim-textobj-syntax.git'
Plugin 'kana/vim-textobj-user.git'
Plugin 'kien/ctrlp.vim'
Plugin 'marijnh/tern_for_vim'
Plugin 'mattn/emmet-vim'
Plugin 'mileszs/ack.vim'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'osyo-manga/vim-over'
Plugin 'pangloss/vim-javascript'
Plugin 'Raimondi/delimitMate'
Plugin 'schickling/vim-bufonly'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'SirVer/ultisnips'
Plugin 'sjl/gundo.vim'
Plugin 'tommcdo/vim-exchange'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-jdaddy'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-projectile'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-speeddating'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Wolfy87/vim-enmasse'
Plugin 'Yggdroot/indentLine'

call vundle#end()
filetype plugin indent on

let g:airline#extensions#tabline#buffer_min_count = 2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamecollapse = 0
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline_powerline_fonts = 1
let g:fugitive_github_domains = ['https://git.corp.yahoo.com']
let g:indentLine_char = '│'
let g:indentLine_color_term = 16
let g:markdown_fenced_languages = ['js=javascript', 'javascript', 'css', 'json=javascript']
let g:mustache_abbreviations = 1
let g:sneak#streak = 1
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
let g:UltiSnipsJumpForwardTrigger='<tab>'
let g:UltiSnipsJumpBackwardTrigger='<s-tab>'
let g:UltiSnipsEditSplit='vertical'
let g:user_emmet_leader_key = '<c-e>'
let g:ycm_key_list_previous_completion = ['<C-S-TAB>', '<Up>']
let g:ycm_key_list_select_completion = ['<C-TAB>', '<Down>']

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
set scrolloff=0
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
set wildignorecase
set wildignore=log/**,node_modules/**,target/**,tmp/**
set wildmenu
set wildmode=longest,list,full
set nowrap

vnoremap <silent> <Enter> :EasyAlign<Enter>
nnoremap ? :<C-u>OverCommandLine<cr>

nmap <leader>G :GundoToggle<cr>
nmap <leader>P :CtrlPClearAllCaches<cr>:CtrlP<cr>
nmap <leader>a :Ack<space>
nmap <leader>b :CtrlPBuffer<cr>
nmap <leader>d :NERDTreeToggle<cr>
nmap <leader>f :NERDTreeFind<cr>
nmap <leader>p :CtrlP<cr>
nmap <leader>r :CtrlPMRUFiles<cr>

if has("unix")
  let s:uname = system("uname")
  if s:uname == "Darwin\n"
    nnoremap <leader>m :silent !open -a Marked.app '%:p'<cr>
  endif
endif

nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gc :Gcommit<cr>
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gl :Glog<cr>
nnoremap <leader>gp :Git push<cr>
nnoremap <leader>gr :Gread<cr>
nnoremap <leader>gs :Git status -sb<cr>
nnoremap <leader>gw :Gwrite<cr>
nnoremap <leader>gt :Gbrowse<cr>

onoremap w :execute 'normal! '.v:count1.'w'<CR>
nnoremap <silent> <F5> :<C-u>nohlsearch<cr><C-l>
nnoremap Y y$

map j gj
map k gk

vmap > >gv
vmap < <gv

" plugin settings
let g:ctrlp_match_window = 'order:ttb,max:20'
let g:ctrlp_root_markers = ['.ctrlp']
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
autocmd BufRead,BufNewFile *.handlebars,*.hbs set ft=html syntax=mustache
autocmd InsertLeave * set nopaste
autocmd VimResized * :wincmd =
autocmd WinEnter * set cursorline
autocmd WinLeave * set nocursorline

set undodir=~/.vim/backups
set undofile
set undolevels=1000
set undoreload=10000

xnoremap * :<C-u>call <SID>VSetSearch()<CR>/<C-R>=@/<CR><CR>
xnoremap # :<C-u>call <SID>VSetSearch()<CR>?<C-R>=@/<CR><CR>
function! s:VSetSearch()
  let temp = @s
  norm! gv"sy
  let @/ = '\V' . substitute(escape(@s, '/\'), '\n', '\\n', 'g')
  let @s = temp
endfunction

match Error /\s\+$/

" 2-character Sneak (default)
nmap \ <Plug>Sneak_s
nmap <bar> <Plug>Sneak_S
" visual-mode
xmap \ <Plug>Sneak_s
xmap <bar> <Plug>Sneak_S
" operator-pending-mode
omap \ <Plug>Sneak_s
omap <bar> <Plug>Sneak_S

nnoremap cao *``cgn
nnoremap caO #``cgN

nnoremap G Gzz
nnoremap n nzz
nnoremap N Nzz
nnoremap } }zz
nnoremap { {zz}}
nnoremap ]c ]czz
nnoremap [c [czz]]

no / /\v

function! RemoveFancyCharacters()
    let typo = {}
    let typo["“"] = '"'
    let typo["”"] = '"'
    let typo["‘"] = "'"
    let typo["’"] = "'"
    let typo["–"] = '--'
    let typo["—"] = '---'
    let typo["…"] = '...'
    :exe ":%s/".join(keys(typo), '\|').'/\=typo[submatch(0)]/ge'
endfunction
command! RemoveFancyCharacters :call RemoveFancyCharacters()

set suffixesadd+=.js
