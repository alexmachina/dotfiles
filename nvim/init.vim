call plug#begin('~/.vim/plugged')
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'dense-analysis/ale'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
call plug#end()
let maplocalleader = " "
set mouse=a
set updatetime=100

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

" deoplete
let g:deoplete#enable_at_startup = 1

" keymap to show the current file in the tree.
nnoremap <localleader>e :NERDTreeFind<cr>

" open NerdTree
nnoremap <localleader>n :NERDTreeToggle<cr>

" keymap to go to previous trab
nnoremap th :tabprev<cr>

" keymap to go to next tab 
nnoremap tl :tabnext<cr>

" easier quit
nnoremap <localleader>q :q<cr>
" easier write
nnoremap <localleader>w :w<cr>

" keymap to open my config
nnoremap <localleader>ve :e ~/.config/nvim/init.vim<cr>

" keymap to reload my config
nnoremap <localleader>vr :so ~/.config/nvim/init.vim<cr>

" enable relative line number
set relativenumber

" IDENTATION
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
