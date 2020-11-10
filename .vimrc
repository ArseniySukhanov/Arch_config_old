if empty(glob('~/.vim/autoload/plug.vim'))
	  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
	      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
    endif
call plug#begin(expand('~/.vim/plugged'))
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-theme'
Plug 'arcticicestudio/nord-vim'
call plug#end()

set term=xterm-256color
set laststatus=2

colorscheme nord
