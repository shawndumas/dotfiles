augroup vimrc
  autocmd!
augroup END

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !mkdir -p ~/.vim/autoload
  silent !curl -fLo ~/.vim/autoload/plug.vim
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd vimrc VimEnter * PlugInstall
endif

call plug#begin('~/.vim/plugged')

Plug 'blerins/flattown'
Plug 'bling/vim-airline'
Plug 'editorconfig/editorconfig-vim'
Plug 'gregsexton/gitv', { 'on': 'Gitv' }
Plug 'honza/vim-snippets'
Plug 'junegunn/vim-easy-align'
Plug 'justinmk/vim-sneak'
Plug 'kana/vim-textobj-datetime'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-lastpat'
Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-syntax'
Plug 'kana/vim-textobj-user'
Plug 'kien/ctrlp.vim'
Plug 'marijnh/tern_for_vim', { 'for': 'javascript' }
Plug 'mattn/emmet-vim', { 'for': [ 'html', 'css', 'sass', 'less' ] }
Plug 'mhinz/vim-signify'
Plug 'mileszs/ack.vim'
Plug 'mustache/vim-mustache-handlebars'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'osyo-manga/vim-over'
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'Raimondi/delimitMate'
Plug 'schickling/vim-bufonly'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'scrooloose/syntastic'
Plug 'SirVer/ultisnips'
Plug 'sjl/gundo.vim'
Plug 'tommcdo/vim-exchange'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-jdaddy'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-projectile'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'Valloric/YouCompleteMe'
Plug 'Wolfy87/vim-enmasse'
Plug 'Wolfy87/vim-expand'
Plug 'Yggdroot/indentLine'

call plug#end()

syntax enable

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
let g:syntastic_auto_jump = 1
let g:syntastic_check_on_open = 1
let g:syntastic_echo_current_error = 1
let g:syntastic_enable_balloons = 1
let g:syntastic_enable_signs = 1
let g:syntastic_error_symbol = 'E'
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_style_error_symbol = 'E'
let g:syntastic_style_warning_symbol = 'W'
let g:syntastic_warning_symbol = 'W'
let g:tern_map_keys = 1
let g:tern_show_argument_hints = 'on_hold'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsEditSplit = 'vertical'
let g:user_emmet_leader_key = '<c-e>'
let g:ycm_key_list_previous_completion = ['<C-S-TAB>', '<Up>']
let g:ycm_key_list_select_completion = ['<C-TAB>', '<Down>']
let g:signify_vcs_list = ['git']
let g:signify_sign_add = '⨁'
let g:signify_sign_delete = '⨴'
let g:signify_sign_delete_first_line = '⨂'
let g:signify_sign_change = '⨸'
let g:signify_sign_changedelete = '⨂'

let mapleader = ' '
let maplocalleader = '  '

colorscheme flattown

set autoindent
set autoread
set backspace=indent,eol,start
set complete=.,w,b,u,t,i,kspell
set directory=$HOME/.vim/backups/,~/tmp,/var/tmp,/tmp
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
set nospell
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
nmap <leader>e :Expand<cr>
nmap <Leader>s :%!git stripspace<cr>
nmap <Leader>h :ball<cr>
nmap <Leader>v :vert ball<cr>

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
nnoremap * *``
nnoremap # #``

map j gj
map k gk

xnoremap > >gv
xnoremap < <gv

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

autocmd vimrc BufEnter *.scss setl filetype=text

autocmd vimrc BufEnter *gitconfig setf gitconfig
autocmd vimrc BufEnter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
autocmd vimrc BufEnter *.json setl filetype=javascript
autocmd vimrc BufEnter *.less setl filetype=less
autocmd vimrc BufRead,BufNewFile *.handlebars,*.hbs set ft=html syntax=mustache
autocmd vimrc InsertLeave * set nopaste
autocmd vimrc VimResized * :wincmd =
autocmd vimrc WinEnter * set cursorline
autocmd vimrc WinLeave * set nocursorline
autocmd vimrc FocusLost,BufLeave,WinLeave * call feedkeys("\<C-\>\<C-n>")
autocmd vimrc FocusLost * let g:oldmouse=&mouse | set mouse=
autocmd vimrc FocusGained * if exists('g:oldmouse') | let &mouse=g:oldmouse | unlet g:oldmouse | endif

set undodir=~/.vim/backups
set undofile
set undolevels=1000
set undoreload=10000

xnoremap . :normal .<CR>
xnoremap * :<C-u>call <SID>VSetSearch()<CR>/<C-R>=@/<CR><CR>
xnoremap # :<C-u>call <SID>VSetSearch()<CR>?<C-R>=@/<CR><CR>
function! s:VSetSearch()
  let temp = @s
  norm! gv"sy
  let @/ = '\V' . substitute(escape(@s, '/\'), '\n', '\\n', 'g')
  let @s = temp
  normal ``
endfunction

xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>
function! ExecuteMacroOverVisualRange()
  echo "@".getcmdline()
  execute ":'<,'>normal @".nr2char(getchar())
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

set cryptmethod=blowfish
set encoding=utf-8
