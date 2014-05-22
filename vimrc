syntax on

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

" Look up the directory tree to find a tags file.
set tags+=tags;/

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

" Something very weird is happening. Hack around it.
map <C-@> <Esc>
map! <C-@> <Esc>

" Set <Leader>d to find the current word in DXR in Firefox.
function! SearchDXR(search)
  let url="gnome-open 'http://dxr.mozilla.org/mozilla-central/search?tree=mozilla-central&case=true&q=" . a:search . "' 2>/dev/null"
  call system(url)
endfunction
command! -nargs=1 DXR call SearchDXR(<f-args>)
map <Leader>d :DXR <C-R>=expand("<cword>")<CR><CR>
