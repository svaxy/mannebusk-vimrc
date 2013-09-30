" Vim color file
" Converted from Textmate theme Monokai using Coloration v0.3.2 (http://github.com/sickill/coloration)

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

runtime colors/monokai.vim

let g:colors_name = "monokaimanne"

hi clear Directory

hi Directory    guifg=#a6e22e
hi TabLine      guifg=#90908a guibg=#3c3d37 
hi TabLineFill  guifg=#64645e
hi TabLineSel   guifg=#333333 guibg=#ae81ff
hi Title        guifg=#f8f8f2 guibg=#64645e

