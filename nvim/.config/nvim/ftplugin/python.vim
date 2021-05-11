setlocal tabstop=4
setlocal shiftwidth=4
setlocal expandtab

" let b:ale_linters = ['pylint', 'mypy']
" let b:ale_fixers = [
" \   'remove_trailing_lines',
" \   'isort',
" \   'yapf',
" \]

" let g:ale_python_pylint_options = '--load-plugins pylint_django'

" nnoremap <buffer> <silent> <LocalLeader>= :ALEFix<CR>
" 
" let g:ale_open_list = 1
" 
" let g:ale_fix_on_save = 1

set autoread

let g:neomake_python_enabled_makers = ['python', 'black', 'isort', 'mypy', 'pylint']

let g:neomake_python_isort_maker = {
	\ 'exe': 'isort',
	\ 'args': '-q'
	\ }

let g:neomake_python_black_maker = {
	\ 'exe': 'black',
	\ 'args': '-q'
	\	}
