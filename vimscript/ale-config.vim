
let g:ale_pattern_options = {
\   '.*\.cpp$': {'ale_enabled': 0},
\   '.*\.c$': {'ale_enabled': 0},
\}


" Attempt to disable ale for specific file types 
" https://github.com/dense-analysis/ale/issues/371

" let g:ale_pattern_options = {
" \   '.*\.json$': {'ale_enabled': 0},
" \   '.*some/folder/.*\.js$': {'ale_enabled': 0},
" \}


let g:ale_linters = {
    \ 'sh': ['language_server'],
    \ }
