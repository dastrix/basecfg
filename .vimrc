set hlsearch

set tabstop=4
set shiftwidth=4
set expandtab

set mouse=a
set paste
set ruler

set fileencodings=utf-8,cp1251,koi8-r,latin1

filetype plugin indent on
syntax on

"if &ft == 'php' | :map <F10> :w<CR>:!php %<CR> | | endif
"if &ft == 'python' | :map <F10> :w<CR>:!python %<CR> | | endif

:map <F10> :call SaveAndRun(&ft)<CR>

function SaveAndRun(ftype)
    echo a:ftype
    :w
    if a:ftype == 'php' 
        :!php % 
    endif
    if a:ftype == 'python' 
        :!python % 
    endif
endf


