set runtimepath^=~/.vim runtimepath+=~/.vim/plugin runtimepath+=~/.vim/after runtimepath+=~/.config/nvim
"set rtp+=~/.vim/plugin
let &packpath = &runtimepath
source ~/.vimrc

" This is the magic to read the resto from the Lua configuration until the
" classic vim config is not yet fully pulled over.
if has('nvim')
  lua require('init')
  "lua require("fjes")
endif
