nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
set timeoutlen=500

" Create map to add keys to
let g:which_key_map =  {}

" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0


" Change the colors if you want
"highlight default link WhichKey          Operator
"highlight default link WhichKeySeperator DiffAdded
"highlight default link WhichKeyGroup     Identifier
"highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler | autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" Single mappings
let g:which_key_map['e'] = [ ':CocCommand explorer --preset floating', 'explorer' ]
let g:which_key_map['f'] = [ ':F', 'search files' ]
let g:which_key_map['h'] = [ '<C-W>s', 'split below']
let g:which_key_map['v'] = [ '<C-W>v', 'split right']
let g:which_key_map['m'] = [ ':call fzf#vim#marks()', 'list marks']
let g:which_key_map['b'] = [ ':call fzf#vim#buffers()', 'list buffers']
let g:which_key_map['w'] = [ ':call fzf#vim#windows()', 'list windows']
let g:which_key_map['S'] = [ ':Startify', 'start screen' ]
let g:which_key_map.s = {
	\'name' : '+comment'
	\}

call which_key#register('<Space>', "g:which_key_map")
