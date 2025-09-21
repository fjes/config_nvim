set runtimepath^=~/.vim runtimepath+=~/.vim/plugin runtimepath+=~/.vim/after runtimepath+=~/.config/nvim
"set rtp+=~/.vim/plugin
let &packpath = &runtimepath
source ~/.vimrc

" This is probably not the right place for it, until I find a better place
" let's leave it here

" This resembles the default statusline
"set statusline=%<%f\ %h%w%m%r%=%-14.(%l,%c%V%)\ %P
" Now add the branch with the fugitive statusline.
set statusline=%<%f\ %h%w%m%r\ %{FugitiveStatusline()}%=%-14.(%l,%c%V%)\ %P

" This is the magic to read the resto from the Lua configuration until the
" classic vim config is not yet fully pulled over.
if has('nvim')
  lua require('init')
  "lua require("fjes")
endif
