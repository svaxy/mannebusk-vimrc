" Pathogen, to have all plugins neatly in one folder
execute pathogen#infect()
syntax on
filetype plugin indent on

" GUI OPTIONS
colorscheme gruvbox
set background=dark    " Setting dark mode
let g:gruvbox_italicize_comments = 1
let g:gruvbox_italicize_strings = 1
set guifont=Andale\ Mono:h12
set guioptions= " Remove gui elements
:set guioptions+=mTrlbL  " fix to be able to remove in one line
:set guioptions-=mTrlbL  " remove gui stuff


let mapleader="'"

" Disable arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Auto brackets
inoremap {}H {}<Esc>i
inoremap ()H ()<Esc>i
inoremap {{}}H {{}}<Esc>hhi

" New line in normal mode
nnoremap <S-Enter> o<Esc>
nnoremap <S-BackSpace> O<Esc>

" Alternative way to get back to normal mode
inoremap jj <ESC>

" Get rid of all the crap that Vim does to be vi compatible
set nocompatible

" Use omni completion
filetype on
filetype plugin on
filetype indent on
set omnifunc=syntaxcomplete#Complete
" Automatically cd to current project
autocmd BufEnter * ProjectRootCD
autocmd BufEnter * TName substitute(system('basename "$PWD"'), "\@", "", "")

" NerdTree settings
nnoremap <C-n> :NERDTreeToggle<CR>   " Toggle NerdTree
nnoremap <leader>n :ProjectRootExe NERDTree<CR> " Open at buffers project root
nnoremap <leader>nf :NERDTreeFind<CR>
nnoremap <leader>no :NERDTree ~/www/dev/
let NERDTreeQuitOnOpen=1        " Automatically close nerdtree on file open

" Grep settings
let Grep_Default_Options = '-rs'
autocmd BufLeave * ccl " Auto close Grep result
nnoremap <Leader>g Grep<space>

" Grunt & Compass
nnoremap <leader>gb :ProjectRootExe !grunt --no-color build<CR>
nnoremap <leader>cb :ProjectRootExe !compass compile<CR>

" Closetags
autocmd FileType html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1
autocmd FileType html,xhtml,xml,htmldjango,jinjahtml,eruby,mako source ~/.vim/bundle/vim-closetags/plugin/closetag.vim

" XmlLint
nnoremap <leader>xv :!xmllint --noout %<CR>

" Emmet trigger key
imap <leader>e <C-y>,

" PHP Doc plugin
source ~/.vim/bundle/php-doc-vim/php-doc.vim 
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


" TagList
nnoremap <leader>t :TlistToggle<CR>
let Tlist_Show_One_File = 0
let Tlist_Show_Menu = 1
let Tlist_File_Fold_Auto_Close = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Close_On_Select = 1
let Tlist_Process_File_Always = 1
let Tlist_Use_Horiz_Window = 0
let Tlist_Use_Right_Window = 1


" Tab settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Navigate buffers
nnoremap <C-H> :bp<cr>
nnoremap <C-L> :bn<cr>
" Navigate windows with alt + direction keys
nnoremap ﬁ <C-w>l
nnoremap ˛ <C-w>h
nnoremap √ <C-w>j
nnoremap ª <C-w>k

" Jump between tabs
nnoremap <leader>h 1gT
nnoremap <leader>l 2gT

" Encoding
set enc=utf-8
set nobomb
set fileencoding=utf-8
set fileencodings=ucs-bom,utf8,prc

" Make dashes part of word
set lisp

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
" set undofile
" set clipboard=unnamedplus   " Use system clipboard registry (Ubuntu)
set clipboard=unnamed    " Use system clipboard registry (OS X)

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
