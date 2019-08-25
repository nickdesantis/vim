"Appearance
colorscheme zenburn
"colorscheme solarized

"Sanity
set encoding=utf-8
syntax on
set showmatch
set nu
filetype plugin indent on
set autoindent
set smartindent

"Keybindings
"Split Nav
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" Escape Key
imap jk <Esc>
" Leader
let mapleader=" "



" Code formatting
" tabwidth, insert spaces instead of tabs
set tabstop=4 "tab width of 4 spaces
set shiftwidth=4 "indent of 4 spaces
set expandtab "expand spaces to tabs
set textwidth=120 "Because Dwight won't read C++ anyway
set colorcolumn=120

" C/C++ Specific
" switch between header/source with F4
map <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
" recreate tags file with F5
map <F5> :!ctags -R –c++-kinds=+p –fields=+iaS –extra=+q .<CR>
" goto definition with F12
map <F12> <C-]>


"Python Formatting
au BufNewFile,BufRead *.py set tabstop=4
au BufNewFile,BufRead *.py set softtabstop=4
au BufNewFile,BufRead *.py set shiftwidth=4
au BufNewFile,BufRead *.py set expandtab

au BufNewFile,BufRead *.py set textwidth=79
au BufNewFile,BufRead *.py set autoindent
au BufNewFile,BufRead *.py set fileformat=unix 
