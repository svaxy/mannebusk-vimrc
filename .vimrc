"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Manne Busk's Vim Configuration
"
let mapleader="'"
source ~/.vim-plugins


""""""
" GUI OPTIONS
"

" Theme
" colorscheme feral
set background=dark

" Font

if has("unix")
    let s:uname = substitute(system("uname -s"), '\n', '', '')
    if s:uname == 'Darwin'
        " OS X fonts
        set guifont=Andale\ Mono:h12
    else
        " Linux fonts
        set guifont=Fira\ Mono\ 11
    endif
endif

" Disable gui elements
set guioptions= " Remove gui elements
:set guioptions+=mTrlbL  " fix to be able to remove in one line
:set guioptions-=mTrlbL  " remove gui stuff



""""""
" SHORTCUTS
"

" New line in normal mode
nnoremap <S-Enter> o<Esc>
nnoremap <S-BackSpace> O<Esc>

" XML Lint
nnoremap <leader>xv :!xmllint --noout %<CR>

" Reload vimrc
nnoremap <C-r><C-l> :source ~/.vimrc<CR>


""""""
" PLUGINS
"

" ProjectRootCD - Automatically cd to current project
augroup projectrootcd
    autocmd!
    autocmd BufEnter * ProjectRootCD
augroup END 
nnoremap <leader>n :ProjectRootExe NERDTree<CR> " Open at buffers project root

" NerdTree
nnoremap <C-n> :NERDTreeToggle<CR>   " Toggle NerdTree
nnoremap <leader>nf :NERDTreeFind<CR>
nnoremap <leader>no :NERDTree ~/www/dev/
let NERDTreeQuitOnOpen=1        " Automatically close nerdtree on file open

" CloseTags
augroup closetags
    autocmd!
    autocmd FileType html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1 
    autocmd FileType html,xhtml,xml,htmldjango,jinjahtml,eruby,mako source ~/.vim/bundle/vim-closetags/plugin/closetag.vim
augroup END

" Emmet
imap <leader>e <C-y>,

" TName
" Set tab name automatically
augroup tabname
    autocmd!
    autocmd BufEnter * TName substitute(system('basename "$PWD"'), "\@", "", "")
augroup END

"PHPDoc
" source ~/.vim/bundle/php-doc-vim/php-doc.vim 
inoremap <Leader>p <ESC>:call PhpDocSingle()<CR>i 
nnoremap <Leader>p :call PhpDocSingle()<CR> 
vnoremap <Leader>p :call PhpDocRange()<CR> 
let g:pdv_cfg_Type = "mixed"
let g:pdv_cfg_Package = "Webbhuset"
let g:pdv_cfg_Version = "$id$"
let g:pdv_cfg_Author = "Webbhuset <info@webbhuset.se>"
let g:pdv_cfg_Copyright = "2014 Webbhuset"
let g:pdv_cfg_License = "Proprietary"
let g:pdv_cfg_ReturnVal = "$this"

" AirLine
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
set ttimeoutlen=50

let g:powerline_symbols = 'fancy'
let g:airline_theme = 'zenburn'
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



""""""
" NAVIGATION SETTINGS
"

" Disable arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>



""""""
" GENERAL SETTINGS
"

" Grep settings
let Grep_Default_Options = '-rs'
augroup grep
    autocmd!
    autocmd BufLeave * ccl " Auto close Grep result
augroup END
nnoremap <Leader>g Grep<space>

set listchars=tab:>-,trail:٠,extends:>,precedes:<
set list

" Encoding
set enc=utf-8
set nobomb
set fileencoding=utf-8
set fileencodings=ucs-bom,utf8,prc

" Make dashes part of word
set lisp

" Get rid of all the crap that Vim does to be vi compatible
set nocompatible

" Use omni completion
filetype on
filetype plugin on
filetype indent on
set omnifunc=syntaxcomplete#Complete


" Tab settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set scrolloff=10
set autoindent
set showmode
set showcmd
set number
set hidden
set wildmenu
set wildmode=list:longest
set visualbell   " No beeping   
set noerrorbells " No more flashing light 
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set title

if has("unix")
    let s:uname = substitute(system("uname -s"), '\n', '', '')
    if s:uname == 'Darwin'
        set clipboard=unnamed    " Use system clipboard registry (OS X)
    else
        set clipboard=unnamedplus   " Use system clipboard registry (Ubuntu)
    endif
endif

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo

" Searching
set ignorecase
set smartcase       " case-insensitive on lowecase only, case-sensitive when any uppercase
set incsearch       " show search matches as you type
set showmatch
set hlsearch

set noswapfile " Don't create swapfiles (not fun using git)

set wrap
set textwidth=79
set formatoptions=qrn
