set nocompatible
syntax on
filetype indent plugin on
set expandtab
set smarttab
set autoindent
au FileType puppet setlocal tabstop=4 expandtab shiftwidth=2 softtabstop=2
execute pathogen#infect()

highlight ExtraWhitespace ctermbg=darkgreen guibg=lightgreen
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

