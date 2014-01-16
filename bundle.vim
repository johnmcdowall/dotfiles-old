set nocompatible

" this must be turned off for vundle, but is renabled later
" See: http://tooky.co.uk/2010/04/08/there-was-a-problem-with-the-editor-vi-git-on-mac-os-x.html
filetype on
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle "gmarik/vundle"

Bundle "altercation/vim-colors-solarized"

" Language & Project specific plugins
Bundle "vim-ruby/vim-ruby"
Bundle "pangloss/vim-javascript"
Bundle "thoughtbot/vim-rspec"
Bundle "kchmck/vim-coffee-script"
Bundle "tpope/vim-markdown"
Bundle "tpope/vim-rails"
Bundle "nono/vim-handlebars"

" General plugins
Bundle "scrooloose/nerdtree"
Bundle "ddollar/nerdcommenter"
Bundle "ervandew/supertab"
Bundle "tpope/vim-fugitive"
Bundle "tpope/vim-git"
Bundle "tpope/vim-surround"

Bundle "rking/ag.vim"
Bundle "tpope/vim-endwise"
Bundle "tpope/vim-repeat"
Bundle "godlygeek/tabular"
Bundle "tpope/vim-dispatch"
Bundle "kien/ctrlp.vim"
Bundle 'airblade/vim-gitgutter'

" Required by vundle
filetype plugin indent on
