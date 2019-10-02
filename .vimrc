"Environment Basics
nnoremap c "_c
set nocompatible
filetype plugin on
"off, enable, disable? syntax values
syntax on
set t_Co=256
set encoding=utf-8
set spell spelllang=en_us
"If you want to split right, just use vsp
if has("gui_running")
    set guifont=Source\ Code\ Pro\ for\ Powerline\ Light\ 14
    set guioptions -=m
    set guioptions -=T
	set guioptions -=R
	set guioptions -=r
	set guioptions -=l
	set guioptions -=L
endif

"remap clipboard cut and paste
vnoremap <C-c> "*y
nnoremap <C-v> "*p

" resize current buffer by +/- 2 
nnoremap <C-h> :vertical resize -2<cr><cr>
nnoremap <C-j> :resize +2<cr><cr>
nnoremap <C-k> :resize -2<cr><cr>
nnoremap <C-l> :vertical resize +2<cr><cr>

"Fonts are changed via the terminal settings.

"Vim UI Elements
let g:solarized_termcolors=256
colorscheme solarized
"Going to have to do something here...
set background=light
let g:airline_theme='solarized'
set cursorline
set ruler
set nu
set showmatch
set incsearch
set hlsearch
set ignorecase
set smartcase
set wildmenu
set wildmode=longest,list,full
set mouse=a

"Formatting Lines
set tw=79
"set the next line if you want autoindent.
"set autoindent
set shiftwidth=4
set softtabstop=4
"set expandtab
set tabstop=4


" Disables automatic commenting on newline:
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Spell-check set to <leader>o, 'o' for 'orthography':
	map <leader>o :setlocal spell! spelllang=en_us<CR>

" Spell-check configurator.
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

"VimPlug AutoInstall
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


"VimPlug
call plug#begin()
    Plug 'altercation/vim-colors-solarized'
    "Plug 'klen/python-mode' "This causes crashes
    Plug 'oblitum/youcompleteme'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'junegunn/goyo.vim'
    Plug 'lervag/vimtex'
    Plug 'sirver/ultisnips'
    Plug 'honza/vim-snippets'
    Plug 'godlygeek/csapprox'
call plug#end()

"Vimtex requirements
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
let g:vimtex_compiler_latexmk={'executable' : 'latexmk'}
"set conceallevel=1
"let g:tex_conceal='abdmg'

"Additional LaTeX Quality of Life Content.
"Maybe one day...






"This template directory is not the correct template directory, but it is
"certainly a good start for adding a personal template.
"let g:Tex_CustomTemplateDirectory='/usr/share/texmf-dist/tex/latex/'

"Airline theme fonts...
 if !exists('g:airline_symbols')
        let g:airline_symbols = {}
    endif

    " unicode symbols
    "let g:airline_left_sep = '»'
    "let g:airline_left_sep = '▶'
    "let g:airline_right_sep = '«'
    "let g:airline_right_sep = '◀'
    let g:airline_symbols.crypt = '🔒'
    "let g:airline_symbols.linenr = '☰'
    "let g:airline_symbols.linenr = '␊'
    let g:airline_symbols.linenr = '␤'
    "let g:airline_symbols.linenr = '¶'
    "let g:airline_symbols.maxlinenr = ''
    let g:airline_symbols.maxlinenr = '㏑'
    let g:airline_symbols.branch = '⎇'
    "let g:airline_symbols.paste = 'ρ'
    let g:airline_symbols.paste = 'Þ'
    "let g:airline_symbols.paste = '∥'
    let g:airline_symbols.spell = 'Ꞩ'
    let g:airline_symbols.notexists = 'Ɇ'
    let g:airline_symbols.whitespace = 'Ξ'

    " powerline symbols
    let g:airline_left_sep = ''
    let g:airline_left_alt_sep = ''
    let g:airline_right_sep = ''
    let g:airline_right_alt_sep = ''
    let g:airline_symbols.branch = ''
    let g:airline_symbols.readonly = ''
    let g:airline_symbols.linenr = '☰'
    let g:airline_symbols.maxlinenr = ''

"   old vim-powerline symbols
    "let g:airline_left_sep = '⮀'
    "let g:airline_left_alt_sep = '⮁'
    "let g:airline_right_sep = '⮂'
    "let g:airline_right_alt_sep = '⮃'
    "let g:airline_symbols.branch = '⭠'
    "let g:airline_symbols.readonly = '⭤'
    "let g:airline_symbols.linenr = '⭡'

    let g:airline_powerline_fonts = 1

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-f>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
"Check to see which python version with :has("python2") or 3. 0 if no 1 if yes.
"Check to ensure that the python version is correct with :py3 import sys; print(sys.version)
let g:UltiSnipsUsePythonVersion = 3
"Extra note about UltiSnips. Go into the vim-snippet directory and destroy the
"snippets directory. go into UltiSnips folder and edit snippets.snippet so usnip becomes snip. :)

"LaTeX-Box

