" Based on this https://gist.github.com/gabrielso/3724745

" Set vim as default editor
" sudo update-alternatives --config editor

" Enable syntax highlighting
syntax on

" Use Vim settings, rather than Vi settings
set nocompatible

" Read file when modified outside Vim
set autoread

" Do not keep any history
"set viminfo='0,:0,<0,@0,f0
"set nobackup
"set nowb
set noswapfile

" Allow backspacing over everything in INSERT mode
set backspace=indent,eol,start

" Show ruler and command visual aid
set ruler
set showcmd

" Set color at 80'th column
set colorcolumn=80
highlight ColorColumn ctermbg=4

" Disable bells
set noerrorbells
set visualbell
set t_vb=

" Don't use Ex mode, use Q for formatting
map Q gq

" CTRL-U in INSERT mode deletes a lot. Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" Set partial search and result highlighting
set incsearch
set hlsearch

" Ignore case when searching
set ignorecase
set smartcase

" Show matching bracets
set showmatch

" Highlight the cursor line
"set cursorline

" Use Monaco as default font
set guifont=Monaco:h12

" Hide the toolbar in GUI
set guioptions-=T

" Set the colorscheme and window transparency
"colorscheme desert
"set transparency=5

" Disable 'command' and 'option' navigation bindings
if has("gui_macvim")
  let macvim_skip_cmd_opt_movement = 1
endif

" Change Netrw tree mode
let g:netrw_liststyle=3

" Set default vertical split to right
set splitright

" Set soft tabs
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab

" Indent
set ai
set si

" Show invisibles
"set listchars=eol:¬,tab:▸\ ,trail:·
set listchars=tab:▸\ ,trail:·
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

" Enable mouse and clipboard sharing
set mouse=a
set clipboard+=unnamedplus

" Show line number and listchars
set list
set nu
set rnu

" Autocomplete enclosures
" https://stackoverflow.com/a/62536744/15911637

" Use jk to press Esc
inoremap jk <Esc>

" switch buffer
" https://stackoverflow.com/a/5562707/15911637
map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>

" Clear highlight
map <C-h> :noh<cr>
