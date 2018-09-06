call plug#begin('~/.local/share/nvim/plugged')
" Completion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neco-syntax' " Gets some completion entries from syntax-highlight files
Plug 'Shougo/neosnippet.vim' " snippet inserter integrated with deoplete
Plug 'Shougo/neosnippet-snippets' " snippet library for neosnippet, many langs
" Git commands
Plug 'jreybert/vimagit'
" VCS gutter
Plug 'mhinz/vim-signify'
" Elixir (alchemist)
Plug 'elixir-lang/vim-elixir', {'for': 'elixir'} " dependency of alchemist
Plug 'slashmili/alchemist.vim', {'for': 'elixir'} " IDE-ish
" Lua
Plug 'tbastos/vim-lua', {'for': 'lua'}
Plug 'davisdude/vim-love-docs', {'branch': 'build', 'for': 'lua'}
" Python
Plug 'zchee/deoplete-jedi', {'for': 'python'} " autocompletion
Plug 'tmhedberg/simpylfold', {'for': 'python'} " folding Python blocks
" Scala
Plug 'ensime/ensime-vim', { 'for': 'scala', 'do': ':UpdateRemotePlugins' }
" Lisp
Plug 'l04m33/vlime', { 'rtp': 'vim/' }
" Async lint engine
Plug 'w0rp/ale'
" NERDTree
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
"Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Solarized
Plug 'altercation/vim-colors-solarized'
" EasyMotion
Plug 'easymotion/vim-easymotion'
" Folds
Plug 'konfekt/fastfold'
" Undo tree visualizer
Plug 'mbbill/undotree'
" Text objects
" a for argument
Plug 'vim-scripts/argtextobj.vim'
" i for same-indent blocks
Plug 'michaeljsmith/vim-indent-object'
call plug#end()

" Color scheme
set background=dark
colorscheme solarized

" NERDTree config:
" Open tree on Ctrl-N
map <C-n> :NERDTreeToggle<CR>
" Close nvim if tree is the only thing open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" ALE setup
let g:ale_fix_on_save = 1

"enable deoplete
let g:deoplete#enable_at_startup = 1

" Airline config
let g:airline#extensions#tabline#enabled = 1

" Undotree config
let g:undotree_WindowLayout = 3
let g:undotree_ShortIndicators = 1

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
