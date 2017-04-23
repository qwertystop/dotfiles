call plug#begin('~/.local/share/nvim/plugged')
"completion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Git commands
Plug 'jreybert/vimagit'
" VCS gutter
Plug 'mhinz/vim-signify'
" Elixir (alchemist)
Plug 'elixir-lang/vim-elixir', {'for': 'elixir'}
Plug 'slashmili/alchemist.vim', {'for': 'elixir'}
" syntastic
Plug 'vim-syntastic/syntastic'
"Tree
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
call plug#end()

" NERDTree config:
" Open tree on Ctrl-N
map <C-n> :NERDTreeToggle<CR>
" Close nvim if tree is the only thing open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Open tree if nvim opened with no args
" Can't seem to make it work if opened with directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if (argc() == 0 && !exists("s:std_in")) | NERDTree | endif

" Syntastic setup
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Elixir-specific
let g:syntastic_elixir_checkers = ['elixir']
let g:syntastic_enable_elixir_checker = 1

"enable deoplete
let g:deoplete#enable_at_startup = 1

" General config:
"split navigations
map <C-Down> <C-W><C-J>
map <C-Up> <C-W><C-K>
map <C-Right> <C-W><C-L>
map <C-Left> <C-W><C-H>
set splitbelow
set splitright
