
  call plug#begin('~/.config/nvim/plugged')

  "Plug 'ctjhoa/spacevim'

  Plug 'scrooloose/nerdtree'
  Plug 'scrooloose/nerdcommenter'

  "Plug 'tpope/vim-sensible'
  "Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  
  Plug 'mhartington/oceanic-next'

  Plug 'terryma/vim-multiple-cursors'
  
  "Plug 'tpope/vim-surround'
  "Plug 'tpope/vim-repeat'

  "Plug 'elmcast/elm-vim'

  call plug#end()

  "colorscheme OceanicNext

  set number 

  set undofile
  set undodir="$HOME/.vim_undo_files"

  set clipboard=unnamed


  set expandtab
  set shiftwidth=2
  set softtabstop=2

  map <space> <Leader>
  noremap q <Nop>
  nnoremap Q <nop>
  noremap <Leader>ss :w<CR>
  noremap <Leader>qq :q<CR>
  noremap <Leader>sq :wq<CR>
  noremap <Leader>ll :nohl<CR>
  vnoremap <C-c> :w !pbcopy<CR><CR>
  nnoremap <C-j> :m .+1<CR>==
  nnoremap <C-k> :m .-2<CR>==
  inoremap <C-j> <Esc>:m .+1<CR>==gi
  inoremap <C-k> <Esc>:m .-2<CR>==gi
  vnoremap <C-j> :m '>+1<CR>gv=gv
  vnoremap <C-k> :m '<-2<CR>gv=gv
