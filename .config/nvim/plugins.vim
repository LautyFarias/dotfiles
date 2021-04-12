call plug#begin('~/.config/nvim/plugged')

" Themes

Plug 'morhetz/gruvbox'

" Interface

Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/fzf.vim'
" Plug 'itchyny/lightline.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Code Style

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Chiel92/vim-autoformat'
" Plug 'vim-syntastic/syntastic'
Plug 'dense-analysis/ale'

" coc
" Plug 'pappasam/coc-jedi', {'branch': 'main', 'do': 'yarn install --frozen-lockfile'}
" Plug 'fannheyward/coc-rust-analyzer', {'do': 'yarn install --frozen-lockfile'}
" Plug 'LeonardSSH/coc-discord-rpc', {'do': 'yarn install --frozen-lockfile'}

" Source control
" Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'

call plug#end()

" ========
" Plugins Configs
" ========

" NERDTree
" Start NERDTree when Vim starts with a directory argument.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && !exists('s:std_in') |
            \ execute 'NERDTree' argv()[0] | wincmd p | endif

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

nnoremap <silent> <A-h> :TmuxNavigateLeft<CR>
nnoremap <silent> <A-j> :TmuxNavigateDown<CR>
nnoremap <silent> <A-k> :TmuxNavigateUp<CR>
nnoremap <silent> <A-l> :TmuxNavigateRight<CR>
nnoremap <silent> <A-Left> :TmuxNavigateLeft<CR>
nnoremap <silent> <A-Down> :TmuxNavigateDown<CR>
nnoremap <silent> <A-Up> :TmuxNavigateUp<CR>
nnoremap <silent> <A-Right> :TmuxNavigateRight<CR>

" FZF
let $FZF_DEFAULT_COMMAND = 'find . -type f -not -path "*/\.git/*"'
nnoremap <leader>fs :Files<CR>

" Vim Autoformat
noremap <C-I> :Autoformat<CR>
noremap <C-L> :AutoformatLine<CR>

" coc
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Disable coc suggest for js, py archives
autocmd FileType python let b:coc_suggest_disable = 1
autocmd FileType javascript let b:coc_suggest_disable = 1

" Kite
let g:kite_supported_languages = ['javascript', 'python']

" Trigger completion
if &filetype == 'javascript' || &filetype == 'python'
    inoremap <C-space> <C-x><C-U>
else
    inoremap <silent><expr> <C-space> coc#refresh()
endif

" ALE

nmap <C-A-f> :ALEFix<CR>
let b:ale_fixers = {
            \   '*': [
            \       'remove_trailing_lines',
            \       'trim_whitespace'
            \   ],
            \   'python': [
            \       'isort',
            \       'autopep8',
            \       'add_blank_lines_for_python_control_statements'
            \   ]}
let b:ale_linters = {
            \   'python': [
            \       'pylint', 'pycodestyle'
            \   ]}

" Syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0


" Theme

colorscheme gruvbox
let g:gruvbox_contrast_dark = 'hard'

