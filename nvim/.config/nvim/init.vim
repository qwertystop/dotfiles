" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')
" Visual things
" Solarized
Plug 'altercation/vim-colors-solarized'
" Show indent levels
Plug 'nathanaelkane/vim-indent-guides'
" Status line
Plug 'itchyny/lightline.vim'
" Folds
Plug 'konfekt/fastfold'
Plug 'tmhedberg/simpylfold', {'for': 'python'}
" VCS gutter
Plug 'mhinz/vim-signify'

" Automatic things
Plug 'neomake/neomake'

" Completion
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
Plug 'zchee/deoplete-jedi'
" Parinfer
Plug 'bhurlow/vim-parinfer', {'for': 'lisp'}
" Delimiters
Plug 'Raimondi/delimitMate', {'for': 'python'}

" General language pack
Plug 'sheerun/vim-polyglot'


" Active tools
" Undo tree visualizer
Plug 'mbbill/undotree'
" Marks in column
Plug 'kshenoy/vim-signature'
" NERDTree
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'Xuyuanp/nerdtree-git-plugin'
" Vlime
"Plug 'l04m33/vlime', {'rtp': 'vim/'}
Plug 'kovisoft/slimv'
" Git commands
Plug 'jreybert/vimagit'
Plug 'tpope/vim-fugitive'
" Fuzzy finder
Plug 'ctrlpvim/ctrlp.vim'
" Show ctags
Plug 'ludovicchabant/vim-gutentags'
Plug 'majutsushi/tagbar'

" Elixir
Plug 'c-brenn/phoenix.vim', {'for': 'elixir'}
Plug 'tpope/vim-projectionist', {'for': 'elixir'}
Plug 'slashmili/alchemist.vim', {'for': 'elixir'}
Plug 'mhinz/vim-mix-format', {'for': 'elixir'}

call plug#end()

" tags file is in .git
set tags=.git/tags

call neomake#configure#automake('rw', 1000)
let g:neomake_open_list = 2

syntax enable
set background=dark
colorscheme solarized

" Hook up python
let g:python_host_prog = '/Users/dheyman/.pyenv/versions/neovim2/bin/python'
let g:python3_host_prog = '/Users/dheyman/.pyenv/versions/neovim3/bin/python'

" Use deoplete.
let g:deoplete#enable_at_startup = 1

" Show/hide various sidebars
nnoremap <Leader>bt :TagbarToggle<CR>
nnoremap <Leader>bn :NERDTreeToggle<CR>
nnoremap <Leader>bu :UndotreeToggle<CR>

" Set up vim-indent-guide
let g:indent_guides_enable_on_vim_startup = 1

" Close nvim if NERDTree is the only thing open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" General config:
" split navigations
map <C-Down> <C-W><C-J>
map <C-Up> <C-W><C-K>
map <C-Right> <C-W><C-L>
map <C-Left> <C-W><C-H>
set splitbelow
set splitright
" Leader key indicated in corner when active
set showcmd
" Exit terminal mode
tnoremap <Esc> <C-\><C-n>
" Undo persistence
set undofile

let g:lightline = {     
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'relativepath', 'modified', 'fugitive' ] ],
      \   'right': [ [ 'lineinfo' ],
      \              [ 'percent' ],
      \              [ 'fileformat', 'fileencoding', 'filetype', 'charvaluehex' ] ]
      \ },
      \ 'component_function': {
      \   'fugitive': 'FugitiveStatusLine'
      \ },
      \ }
