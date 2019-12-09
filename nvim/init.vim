call plug#begin('~/.vim/plugged')
" NERDTree
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'ctrlpvim/ctrlp.vim'
Plug 'dense-analysis/ale'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'ryanoasis/vim-devicons'

" JS syntax highlighting
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
call plug#end()
let maplocalleader = " "
set mouse=a
set updatetime=100

autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.tsx
" deoplet
let g:deoplete#enable_at_startup = 1

" NerdTree
let NERDTreeMinimalUI=1
" ale
let g:ale_fixers = ['prettier', 'eslint']
let b:ale_linters = ['prettier', 'eslint']
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'
highlight clear ALEErrorSign
highlight clear ALEWarningSign
let g:ale_fix_on_save = 1
nnoremap <localleader>gd :ALEGoToDefinition<cr>

" 😋 VSCode mode 😋
" Go to definition on Ctrl-Click
nnoremap <C-LeftMouse> <LeftMouse>:ALEGoToDefinition<cr>
" Save on Ctrl-s
nnoremap <C-s> :w<cr>
" Highlight git gutters
highlight GitGutterAdd ctermfg=46 ctermbg=none
highlight GitGutterDelete ctermfg=9 ctermbg=none

" CTRL-p
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" Keymaps
" keymap to show the current file in the tree.
nnoremap <localleader>e :NERDTreeTabsFind<cr>
" open NerdTree
nnoremap <localleader>n :NERDTreeTabsToggle<cr>
" go to previous trab
nnoremap th :tabprev<cr>
" go to next tab 
nnoremap tl :tabnext<cr>
" easier quit
nnoremap <localleader>q :q<cr>
" easier write
nnoremap <localleader>w :w<cr>
" open my config
nnoremap <localleader>ve :e ~/.config/nvim/init.vim<cr>
" reload my config
nnoremap <localleader>vr :w<cr>:so ~/.config/nvim/init.vim<cr>
" Save, reload config and run PlugInstall
nnoremap <localleader>pi :w<cr>:so ~/.config/nvim/init.vim<cr>:PlugInstall<cr>

" enable relative line number
set relativenumber

" Identation
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab

" Open nerdtree if no file is specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
