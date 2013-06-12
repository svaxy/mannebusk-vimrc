" Disable arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

" Various
syntax on
colorscheme jellybeans
set number
set mouse=a
set clipboard=unnamed
set hidden
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,  case-sensitive otherwise
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep
set nobackup
set noswapfile
set pastetoggle=<F2>
set guioptions-=T
set guioptions-=r

" Encoding
set enc=utf-8
set nobomb
set fileencoding=utf-8
set fileencodings=ucs-bom,utf8,prc

" Directions
map <M-Left> b
map <M-Right> w
nnoremap <C-j> 5j
nnoremap <C-k> 5k
vnoremap <C-j> 5j
vnoremap <C-k> 5k

" Scroll
set scrolloff=7
set scroll=15
" noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 10, 2)<CR>
" noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 10, 2)<CR>
" noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
" noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>

" Indent
set autoindent
set cindent

filetype on
filetype plugin on
filetype indent on

" Tabs
set expandtab
set shiftwidth=4  " number of spaces to use for autoindenting
set tabstop=4     " a tab is four spaces
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set smarttab      " insert tabs on the start of a line according to shiftwidth, not tabstop

nmap <S-Tab> <<
nmap <Tab> >>
imap <S-Tab> <Esc><<i

" MacVim
nmap <D-Right> :maca _cycleWindowsBackwards:<CR>
nmap <D-Left> :maca _cycleWindows:<CR>

" Cursor position
set cursorline cursorcolumn

" Run modules
" autocmd VimEnter * NERDTree
autocmd FileType html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1
autocmd FileType html,xhtml,xml,htmldjango,jinjahtml,eruby,mako source ~/.vim/plugin/closetag.vim
autocmd FileType php,phtml set omnifunc=phpcomplete#CompletePHP

autocmd BufLeave * ccl

" Global variables
let NERDTreeShowHidden = 1
let g:nerdtree_tabs_open_on_gui_startup = 0
" let g:nerdtree_tabs_open_on_console_startup = 1
" let g:nerdtree_tabs_no_startup_for_diff = 0
let mapleader = ","
" let g:miniBufExplMapWindowNavVim = 1
let g:ctrlp_show_hidden = 1
let g:ctrlp_max_height = 20
let g:ctrlp_max_files = 100000
let Grep_Default_Options = '-rs'

nnoremap <C-H> :bp<cr>
nnoremap <C-L> :bn<cr>

inoremap kj <Esc>
