" Indention

set expandtab      " Convert tabs to spaces.
" set filetype indent on  " Enable indentation rules that are file-type specific.
set smarttab       " Insert “tabstop” number of spaces when the “tab” key is pressed.
set tabstop=4      " Indent using four spaces.
set autoindent     " Auto-indent new lines
set cindent	       " Use 'C' style program indenting
set shiftwidth=4   " Number of auto-indent spaces
set smartindent	   " Enable smart-indent
set softtabstop=4  " Number of spaces per Tab
" set showtabline=2  " Show tab bar
   

" Search

set hlsearch   " Enable search highlighting.
set smartcase  " Automatically switch search to case-sensitive when search query contains an uppercase letter.
set incsearch  " Searches for strings incrementally


" Text Rendering

set encoding=utf-8  " Use an encoding that supports unicode.
set linebreak       " Avoid wrapping a line in the middle of a word.
syntax enable       " Enable syntax highlighting.
set wrap            " Enable line wrapping.


" User Interface
set laststatus=2    " Always display the status bar.
set ruler           " Always show cursor position.
set wildmenu        " Display command line’s tab complete options as a menu.
set tabpagemax=50   " Maximum number of tab pages that can be opened from the command line.
set cursorline      " Highlight the line currently under cursor.
set number          " Show line numbers on the sidebar.
set linebreak	    " Break lines at word (requires Wrap lines)
set showbreak=+++	" Wrap-broken line prefix
set textwidth=100	" Line wrap (number of cols)
set relativenumber  " Show line number on the current line and relative numbers on all other lines.
set noerrorbells    " Disable beep on errors.
set visualbell      " Flash the screen instead of beeping on errors.
set mouse=a         " Enable mouse for scrolling and resizing.
" set title           " Set the window’s title, reflecting the file currently being edited.
set background=dark " Use colors that suit a dark background.


" Miscellaneous
set autoread          " Automatically re-read files if unmodified inside Vim.
" set backspace=indent  " Allow backspacing over indention, line breaks and insertion start.
" set confirm         " Display a confirmation dialog when closing an unsaved file.
" set hidden          " Hide files in the background instead of closing them.
set history=1000      " Increase the undo limit.
" set spell             " Enable spellchecking.
set showmatch         " Highlight matching brace


" Plugins

source ~/.config/nvim/plugins.vim

