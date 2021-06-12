" Change these if you want
let g:signify_sign_add               = '+'
let g:signify_sign_delete            = '_'
let g:signify_sign_delete_first_line = '‾'
let g:signify_sign_change            = '~'

" I find the numbers disctracting
let g:signify_sign_show_count = 0
let g:signify_sign_show_text = 1

let g:which_key_map.g = {
      \ 'name': '+git',
      \ 't' : [':SignifyToggle', 'toggle'],
      \ 'h' : [':SignifyToggleHighlight', 'toggle hightlight'],
      \ 'b' : [':Git blame', 'blame'],
      \ 'p' : [':Git pull', 'pull'],
      \ 'B' : [':GBrowse', 'browse'],
      \ 'e' : [':GV', 'commit browse'],
      \ }

