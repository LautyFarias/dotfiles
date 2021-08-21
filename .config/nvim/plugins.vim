call plug#begin('~/.config/nvim/plugged')

" Themes
Plug 'morhetz/gruvbox'
Plug 'ayu-theme/ayu-vim'
Plug 'cocopon/iceberg.vim'

" Interface
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Helpers
Plug 'christoomey/vim-tmux-navigator'

" Code Style
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Chiel92/vim-autoformat'
Plug 'dense-analysis/ale'
Plug 'codota/tabnine-vim'

" coc
" Plug 'LeonardSSH/coc-discord-rpc', {'do': 'yarn install --frozen-lockfile'}

" Source control
Plug 'mhinz/vim-signify'

call plug#end()

" ========
" Plugins Configs
" ========

" NERDTree
" Start NERDTree when Vim starts with a argument distinct git file o directory.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && !exists('s:std_in') && !isdirectory(argv()[0]) && &filetype !=# 'gitcommit' |
            \ execute 'NERDTree' argv()[0] | wincmd p | endif

" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
"autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
"            \ let buf=bufnr() | buffer# | execute 'normal! \<C-W>w' | execute 'buffer'.buf | endif

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
            \ quit | endif

let NERDTreeShowHidden=1

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>

" NERDTree git

let g:NERDTreeGitStatusIndicatorMapCustom = {
            \ 'Modified'  :'✹',
            \ 'Staged'    :'✚',
            \ 'Untracked' :'✭',
            \ 'Renamed'   :'➜',
            \ 'Unmerged'  :'═',
            \ 'Deleted'   :'✖',
            \ 'Dirty'     :'✗',
            \ 'Ignored'   :'☒',
            \ 'Clean'     :'✔︎',
            \ 'Unknown'   :'?',
            \ }

let g:NERDTreeGitStatusUseNerdFonts = 1
let g:NERDTreeGitStatusShowIgnored = 1

" Vim tmux navigator
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <Leader>h :TmuxNavigateLeft<CR>
nnoremap <silent> <Leader>j :TmuxNavigateDown<CR>
nnoremap <silent> <Leader>k :TmuxNavigateUp<CR>
nnoremap <silent> <Leader>l :TmuxNavigateRight<CR>

nnoremap <silent> <Leader><Left> :TmuxNavigateLeft<CR>
nnoremap <silent> <Leader><Down> :TmuxNavigateDown<CR>
nnoremap <silent> <Leader><Up> :TmuxNavigateUp<CR>
nnoremap <silent> <Leader><Right> :TmuxNavigateRight<CR>


" FZF
let $FZF_DEFAULT_COMMAND = 'find . -type f -not -path "*/\.git/*"'
nnoremap <leader>fs :Files<CR>
nnoremap <leader>fw :Ag<CR>

" Vim Autoformat
noremap <C-I> :Autoformat<CR>
noremap <C-L> :AutoformatLine<CR>

" coc
nmap <silent> gd :ALEGoToDefinition<CR>
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

inoremap <silent><expr> <C-space> coc#refresh()

" TabNine (YouCompleteMe fork)

let g:ycm_add_preview_to_completeopt = 0

let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1

let g:ycm_enable_diagnostic_signs = 0
let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_echo_current_diagnostic = 0

let g:ycm_key_list_select_completion = ['<TAB>']
let g:ycm_key_list_previous_completion = ['<S-TAB>']

set completeopt-=preview

" ALE

nmap <C-A-f> :ALEFix<CR>
let g:ale_virtualenv_dir_names = ['env', '.env', 'venv', '.venv']

" add_blank_lines_for_python_control_statements
let g:ale_fixers = {
            \   '*': [
            \       'remove_trailing_lines',
            \       'trim_whitespace'
            \   ],
            \   'python': [
            \       'isort',
            \       'autopep8',
            \   ],
            \   'yamel': [
            \       'prettier'
            \   ]}
let g:ale_linters = {
            \   'python': [
            \       'pylint',
            \       'pycodestyle',
            \       'pyright',
            \       'pyre',
            \       'pylsp',
            \   ]}


" Theme

" Ayu
let ayucolor="mirage" " for mirage version of theme
let g:indentLine_char = ''
let g:indentLine_first_char = ''
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_setColors = 0

" Gruvbox
let g:gruvbox_contrast_dark = 'hard'

colorscheme ayu
" colorscheme gruvbox
" colorscheme iceberg
