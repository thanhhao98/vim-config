set rtp+=/home/haophan/.config/nvim/Vundle.vim   
call vundle#begin('/home/haophan/.config/nvim/data')
    Plugin 'preservim/nerdcommenter'
    Plugin 'VundleVim/Vundle.vim'
    Plugin 'morhetz/gruvbox'
    Plugin 'tpope/vim-surround'
    Plugin 'jiangmiao/auto-pairs'
    Plugin 'junegunn/fzf.vim'
    Plugin 'rking/ag.vim'
    Plugin 'wakatime/vim-wakatime'
    Plugin 'luochen1990/rainbow'
    Plugin 'justinmk/vim-sneak'
    Plugin 'mhinz/vim-startify'
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
    Plugin 'mhinz/vim-signify'
    Plugin 'tpope/vim-fugitive'
    Plugin 'tpope/vim-rhubarb'
    Plugin 'junegunn/gv.vim'
    Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plugin 'neoclide/coc.nvim', {'branch': 'release'}
call vundle#end()

""" theme
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_number_column='bg0'
colorscheme gruvbox
set bg=dark

""" rainbow activate
let g:rainbow_active = 1

""" config neak like esymosion
let g:sneak#label = 1

""" set init setting
set encoding=utf-8
set number relativenumber
set shiftwidth=4 smarttab autoindent
set nowrap
set cursorline ignorecase smartcase incsearch nohlsearch

""" set tab
autocmd Filetype cpp setlocal ts=2 sw=2 sts=0 expandtab
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4


""" Map init key
let mapleader = " "
let python_highlight_all = 1
let g:fzf_command_prefix = 'Fzf'
let g:python3_host_prog = "/home/haophan/.config/miniconda3/bin/python3"
let g:python_host_prog = "/usr/bin/python2" 
let g:loaded_ruby_provider = 0
let g:loaded_perl_provider = 0

map Q <Nop>
map Y y$


""" Setup enter tab space behavier
nmap <cr> i<cr><Esc>
nmap <tab> i<tab><Esc>
imap <C-J> <Down>
imap <C-K> <Up>

nnoremap <Leader>hi :set cursorline!<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>
nnoremap <Leader>m :call fzf#vim#marks()<CR>
nnoremap <Leader>b :call fzf#vim#buffers()<CR>
nnoremap <Leader>w :call fzf#vim#windows()<CR>


""" Auto command
command! ToggleHF CocCommand clangd.switchSourceHeader
command! -bang -nargs=? -complete=dir F call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

""" Show keystroke
set showcmd

" COC
source /home/haophan/.config/nvim/plug-config/coc.vim

""" coc explorer floating
source /home/haophan/.config/nvim/plug-config/coc-explorer.vim

""" coc explorer startify
source /home/haophan/.config/nvim/plug-config/startify.vim

""" airline
source /home/haophan/.config/nvim/plug-config/airline.vim

""" Signify git intergration
source /home/haophan/.config/nvim/plug-config/signify-git.vim

