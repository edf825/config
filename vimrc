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

" Set title of current screen automagically
" Cargo culted from http://vim.wikia.com/wiki/Automatically_set_screen_title
let &titlestring = "" . expand("%:t")
if &term == "screen"
  set t_ts=k
  set t_fs=\
endif
if &term == "screen" || &term == "xterm"
  set title
endif

let &titleold = ""
