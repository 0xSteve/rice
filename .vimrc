"Environment Basics
set nocompatible

"Vim UI Elements
syntax enable
let g:solarized_termcolors=256
colorscheme solarized
set background=light
set cursorline
set ruler
set nu
set showmatch
set incsearch
set hlsearch
set ignorecase
set smartcase
set wildmenu
set mouse=a

"Formatting Lines
set tw=79
set autoindent
set shiftwidth=4
set softtabstop=4
set expandtab
set tabstop =4


"VimPlug
call plug#begin()
    Plug 'altercation/vim-colors-solarized'
    Plug 'klen/python-mode'
    Plug 'xuhdev/vim-latex-live-preview'
    Plug 'vim-scripts/LaTeX-Suite-aka-Vim-LaTeX'
call plug#end()


"LaTeX-Suite (aka Vim-LaTeX) requirements
filetype plugin on
filetype indent on
"This line is absolutely necessary.
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_CompileRule_dvi = 'latex -interaction=nonstopmode -file-line-error-style $*'
let g:Tex_CompileRule_pdf = 'pdflatex -interaction=nonstopmode -file-line-error-style $*'
"This template directory is not the correct template directory, but it is
"certainly a good start for adding a personal template.
"let g:Tex_CustomTemplateDirectory='/usr/share/texmf-dist/tex/latex/'
"Add a line for the tex class directory...
