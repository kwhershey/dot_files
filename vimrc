:syn on
:set nu
:set background=dark
:set cursorline
:set incsearch
:set hlsearch
:set cindent
:set nocompatible
:set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
:set shiftwidth=4
:set backspace=indent,eol,start
:set t_vb=
":set spell spelllang=en_us
:set mouse=a
:colo slate

nnoremap <Tab> <Esc>
vnoremap <Tab> <Esc>gV
onoremap <Tab> <Esc>
cnoremap <Tab> <C-C><Esc>
inoremap <Tab> <Esc>`^
"inoremap <Leader><Tab> <Tab>

filetype plugin on
set shellslash
set grepprg=grep\ -nH\ $*
set iskeyword+=:
