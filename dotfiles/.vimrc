" Indention
set expandtab      " Convert tabs to spaces.
set smarttab       " Insert “tabstop” number of spaces when the “tab” key is pressed.
set tabstop=4      " Indent using four spaces.
set cindent        " Use 'C' style program indenting
set smartindent    " Enable smart-indent
set softtabstop=4  " Number of spaces per Tab

" Search
set hlsearch   " Enable search highlighting.
set smartcase  " Automatically switch search to case-sensitive when search query contains an uppercase letter.
set incsearch  " Searches for strings incrementally

" Text Rendering
set encoding=utf-8  " Use an encoding that supports unicode.
syntax enable       " Enable syntax highlighting.
set nowrap          " Disable line wrapping

" Folding
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2

" User Interface
set laststatus=2    " Always display the status bar.
set ruler           " Always show cursor position.
set wildmenu        " Display command line’s tab complete options as a menu.
set tabpagemax=50   " Maximum number of tab pages that can be opened from the command line.
set cursorline      " Highlight the line currently under cursor.
set textwidth=1000 " Line wrap (number of cols)
set number          " Show line numbers on the sidebar.
set relativenumber  " Show line number on the current line and relative numbers on all other lines.
set noerrorbells    " Disable beep on errors.
set visualbell      " Flash the screen instead of beeping on errors.
set mouse=a         " Enable mouse for scrolling and resizing.
set background=dark " Use colors that suit a dark background.

" Miscellaneous
set autoread          " Automatically re-read files if unmodified inside Vim.
set history=1000      " Increase the undo limit.
set showmatch         " Highlight matching brace
set clipboard=unnamedplus
set termguicolors

" Mapping
:let mapleader = ' '
imap ii <Esc>
nmap <Esc> :noh<CR>

nnoremap <C-s> :w<CR>
nnoremap <C-q> :q<CR>

nnoremap <C-S-Up> :sp<CR>
nnoremap <C-S-Right> :vsp<CR>

nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

nnoremap <C-Up> :m .-2<CR>==
nnoremap <C-Down> :m .+1<CR>==
inoremap <C-Down> <Esc>:m .+1<CR>==gi
inoremap <C-Up> <Esc>:m .-2<CR>==gi
vnoremap <C-Down> :m '>+1<CR>gv=gv
vnoremap <C-Up> :m '<-2<CR>gv=gv

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

" Providers
let g:python3_host_prog = '~/.config/nvim/.venv/bin/python'

" Plugins
source ~/.config/nvim/plugins.vim
