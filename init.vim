set rtp+=~/.config/nvim/Vundle.vim
call vundle#begin('~/.config/nvim/data')
    Plugin 'VundleVim/Vundle.vim'
    Plugin 'preservim/nerdcommenter'
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
    Plugin 'cdelledonne/vim-cmake'
    Plugin 'voldikss/vim-floaterm'
    Plugin 'liuchengxu/vim-which-key'
    Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plugin 'neoclide/coc.nvim', {'branch': 'release'}
call vundle#end()

syntax on

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
let python_highlight_all = 1
let g:fzf_command_prefix = 'Fzf'
let g:python3_host_prog = "~/.config/miniconda3/bin/python3"
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


""" Auto command
command! ToggleHF CocCommand clangd.switchSourceHeader
command! -bang -nargs=? -complete=dir F call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse']}), <bang>0)

""" set mapleader
let g:mapleader = "\<Space>"

""" Show keystroke
set showcmd

""" Which key
source ~/.config/nvim/plug-config/which-key.vim

" COC
source ~/.config/nvim/plug-config/coc.vim

""" coc explorer floating
source ~/.config/nvim/plug-config/coc-explorer.vim

""" coc explorer startify
source ~/.config/nvim/plug-config/startify.vim

""" airline
source ~/.config/nvim/plug-config/airline.vim

""" Signify git intergration
source ~/.config/nvim/plug-config/signify-git.vim

""" Cmake git
source ~/.config/nvim/plug-config/cmake.vim

""" Floaterm
source ~/.config/nvim/plug-config/floaterm.vim
