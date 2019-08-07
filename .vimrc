set shell=bash

syntax enable

set encoding=utf-8

set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1

filetype on
filetype plugin on
filetype plugin indent on

set tabstop=8
set softtabstop=8
set shiftwidth=8
set noexpandtab

set ruler

" Full filepath at bottom
set statusline+=%F

" Python defaults
au FileType python setlocal tabstop=4
au FileType python setlocal softtabstop=4
au FileType python setlocal shiftwidth=4
au FileType python setlocal textwidth=99
au FileType python setlocal expandtab
au FileType python setlocal autoindent
au FileType python setlocal fileformat=unix

" R defaults
au BufNewFile,BufRead *.R setlocal tabstop=2
au BufNewFile,BufRead *.R setlocal softtabstop=2
au BufNewFile,BufRead *.R setlocal shiftwidth=2
au BufNewFile,BufRead *.R setlocal textwidth=79
au BufNewFile,BufRead *.R setlocal expandtab
au BufNewFile,BufRead *.R setlocal autoindent
au BufNewFile,BufRead *.R setlocal fileformat=unix

au Filetype go setlocal tabstop=2
au Filetype go setlocal softtabstop=2
au Filetype go setlocal shiftwidth=2
au Filetype go setlocal noexpandtab

au FileType markdown setlocal tabstop=2
au FileType markdown setlocal softtabstop=2
au FileType markdown setlocal shiftwidth=2
au FileType markdown setlocal textwidth=79
au FileType markdown setlocal expandtab

au FileType html setlocal tabstop=2
au FileType html setlocal softtabstop=2
au FileType html setlocal shiftwidth=2
au FileType html setlocal textwidth=79
au FileType html setlocal expandtab
au FileType html setlocal autoindent
au FileType html setlocal fileformat=unix

au BufNewFile,BufRead *.yml setlocal tabstop=2
au BufNewFile,BufRead *.yml setlocal softtabstop=2
au BufNewFile,BufRead *.yml setlocal shiftwidth=2
au BufNewFile,BufRead *.yml setlocal textwidth=79
au BufNewFile,BufRead *.yml setlocal expandtab
au BufNewFile,BufRead *.yml setlocal autoindent
au BufNewFile,BufRead *.yml setlocal fileformat=unix

au FileType sql setlocal tabstop=2
au FileType sql setlocal softtabstop=2
au FileType sql setlocal shiftwidth=2
au FileType sql setlocal textwidth=79
au FileType sql setlocal expandtab
au FileType sql setlocal autoindent
au FileType sql setlocal fileformat=unix

au BufNewFile,BufRead *.js setlocal tabstop=2
au BufNewFile,BufRead *.js setlocal softtabstop=2
au BufNewFile,BufRead *.js setlocal shiftwidth=2
au BufNewFile,BufRead *.js setlocal textwidth=79
au BufNewFile,BufRead *.js setlocal expandtab
au BufNewFile,BufRead *.js setlocal autoindent
au BufNewFile,BufRead *.js setlocal fileformat=unix

au BufNewFile,BufRead *.css setlocal tabstop=2
au BufNewFile,BufRead *.css setlocal softtabstop=2
au BufNewFile,BufRead *.css setlocal shiftwidth=2
au BufNewFile,BufRead *.css setlocal textwidth=79
au BufNewFile,BufRead *.css setlocal expandtab
au BufNewFile,BufRead *.css setlocal autoindent
au BufNewFile,BufRead *.css setlocal fileformat=unix
