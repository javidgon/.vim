" @Author: Jose Vidal
" @Version: 1.0
" @Last Update: 8/8/2013

" 0.- Run Pathogen.
call pathogen#infect('~/.vim/bundle/{}')
set runtimepath^=~/.vim/bundle/ctrlp.vim

" 1.- Set Theme.
colorscheme molokai
set guifont=DejaVu\ Sans\ Mono\ 12

" 2.- Set Filetypes.
filetype on
filetype plugin on
filetype indent on

" 3.- VIM's General Configuration.
set number
set history=1000
set showmode
set autoread
set hidden
set nobackup
set noswapfile
set visualbell
syntax on
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" 4.- Mapping.
:let mapleader = ","

" Features section
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>f :CtrlP<CR>
nnoremap <leader>m :CtrlPMRU<CR>
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>t :CtrlPMixed<CR>
nnoremap <leader>g :Gblame<CR>
nnoremap <leader>x :bd<CR>
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>v :vsplit<CR>
nnoremap <leader>h :split<CR>
nnoremap <leader>c :TlistToggle<CR>
nnoremap <C-t> :tabnew<CR>
nnoremap <C-x> :tabclose<CR>
nnoremap <C-z> :q<CR>
nnoremap <F5> :bp<CR>
nnoremap <F6> :bn<CR>
nnoremap <F7> :tabp<CR>
nnoremap <F8> :tabn<CR>
cnoremap w!! w !sudo tee % >/dev/null
inoremap jk <esc>

" Navigation section
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" 5.- Abbreviations.
iabbrev adn and

" 6.- Specific Plugin's Configuration.
let g:ctrlp_working_path_mode = 'r'
augroup vimrc_autocmds
    autocmd!
    " highlight characters past column 80
    autocmd FileType python highlight Excess ctermbg=Red guibg=Black
    autocmd FileType python match Excess /\%80v.*/
    autocmd FileType python set nowrap
augroup END
