"""
" Plug Settings
"""
call plug#begin('~/.local/share/nvim/plugged')
Plug 'mattn/emmet-vim'
Plug 'yegappan/grep'
Plug 'scrooloose/nerdtree'
Plug 'tomtom/tcomment_vim'
Plug 'scrooloose/syntastic'
Plug 'yegappan/grep'
Plug 'dbakker/vim-projectroot'
Plug 'editorconfig/editorconfig-vim'
Plug 'fweep/vim-tabber'
Plug 'ervandew/supertab'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'elixir-lang/vim-elixir'
Plug 'sheerun/vim-polyglot'
call plug#end()

" Leader Key
let mapleader="'"

"""
" Colors & Fonts
""
set termguicolors
set background=dark    " Setting dark mode
let g:gruvboc_italic = 1
let g:gruvbox_italicize_comments = 1
let g:gruvbox_italicize_strings = 1
colorscheme gruvbox

if has("unix")
    let s:uname = substitute(system("uname -s"), '\n', '', '')
    if s:uname == 'Darwin'
        " OS X fonts
        set guifont=Andale\ Mono:h12
    else
        " Linux fonts
        set guifont=Fira\ Mono\ 9
    endif
endif

"""
" ProjectRootCD - Automatically cd to current project
""
augroup projectrootcd
    autocmd!
    autocmd BufEnter * ProjectRootCD
augroup END
nnoremap <leader>n :ProjectRootExe NERDTree<CR> " Open at buffers

"""
" NerdTree
""
nnoremap <C-n> :NERDTreeToggle<CR>      " Toggle NerdTree
nnoremap <leader>nf :NERDTreeFind<CR>
nnoremap <leader>no :NERDTree ~/
let NERDTreeQuitOnOpen=1        " Automatically close nerdtree on file open

"""
" Emmet
""
imap <leader>e <C-y>, " Expand code

"""
" Grep
""
let Grep_Default_Options = '-rs'
augroup grep
    autocmd!
        autocmd BufLeave * ccl " Auto close Grep result
augroup END
nnoremap <Leader>g Grep<space>


"""
" NAVIGATION SETTINGS
""
" Disable arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

"""
" Clipboard registry settings
""
if has("unix")
    let s:uname = substitute(system("uname -s"), '\n', '', '')
    if s:uname == 'Darwin'
        set clipboard=unnamed    " Use system clipboard registry (OS X)
    else
        set clipboard=unnamedplus   " Use system clipboard registry (Ubuntu)
    endif
endif

"""
" Airline
""
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
set ttimeoutlen=50

let g:powerline_symbols = 'fancy'
let g:airline_theme = 'gruvbox'
let g:airline#extensions#hunks#enabled = 0
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#branch#format = 1

let g:airline_powerline_fonts = 1
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

"""
" General Settings
""
" Show whitespaces
set listchars=tab:>-,trail:٠
set list
" Indentation
set autoindent
" Make dashes part of word
set lisp
" Tab settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
" Offset scroll from cursor
set scrolloff=10
" UI Stuff
set cursorline
set ruler
set title
set wildmenu
set wildmode=list:longest
set number
" History & Undo
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
" Searching
set ignorecase
set smartcase       " case-insensitive on lowecase only, case-sensitive when any uppercase
set incsearch       " show search matches as you type
set showmatch
set hlsearch
" Linewrap settings
set wrap
set textwidth=79
set formatoptions=qrn
" Swap file
set noswapfile
