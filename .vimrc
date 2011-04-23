set background=dark
colorscheme solarized

set nocompatible
set cindent
set nosmartindent
set noautoindent
set expandtab
set tabstop=4
set shiftwidth=4
set showmatch
set number

set backupdir=~/.vim/bak//
set directory=~/.vim/swp//

set fo=tcrq

set backspace=2

syntax on

filetype indent on

" highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
au ColorScheme * highlight ExtraWhitespace guibg=red
au BufEnter * match ExtraWhitespace /\s\+$/
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhiteSpace /\s\+$/

" remove trailing whitespace before saving
autocmd BufWritePre * :%s/\s\+$//e

" stare at touhou girls all day long
set transparency=35

" indent guides are so cool
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup = 1

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1

" Easily move between many windows with cmd/win + arrow keys
nmap  <D-Right>     <C-W><Right>
nmap  <D-Left>      <C-W><Left>
nmap  <D-Down>      <C-W><Down>
nmap  <D-Up>        <C-W><Up>
nmap  <T-Right>     <C-W><Right>
nmap  <T-Left>      <C-W><Left>
nmap  <T-Down>      <C-W><Down>
nmap  <T-Up>        <C-W><Up>

set laststatus=2    " always show status line
set mouse=a         " mouse click and select behaves well in console vi(m)

" Default sass sw is 2, and from time to time it autoindents - ANNOYING. This fixes it.
au FileType sass set sw=4
