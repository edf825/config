set background=light

set cindent
set cinoptions=(0

set tabstop=2
set shiftwidth=2
set expandtab

set colorcolumn=80
set number
set laststatus=2
set nohls
set nowrap

highlight ColorColumn ctermbg=7

highlight TrailingWhitespace ctermbg=7
match TrailingWhitespace /\s\+$/

highlight TabsAreStupid ctermbg=red
match TabsAreStupid /\t/
