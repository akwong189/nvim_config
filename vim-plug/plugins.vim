" auto installs vim plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " Add icons to file explorer
    Plug 'ryanoasis/vim-devicons'
    " File Explorer
    Plug 'tpope/vim-vinegar'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Improves bottom bar
    Plug 'itchyny/lightline.vim'
    " Adds gitbranch support to lightline
    Plug 'itchyny/vim-gitbranch'
    " add lightline ale support
    Plug 'maximbaz/lightline-ale'
    " Adds rainbow brackets
    Plug 'luochen1990/rainbow'
    " Provides indent guides
    Plug 'nathanaelkane/vim-indent-guides'
    " Adds Git functions
    Plug 'airblade/vim-gitgutter'
    " Adds VIM theme
    Plug 'KeitaNakamura/neodark.vim'
    Plug 'joshdick/onedark.vim'
    Plug 'jacoborus/tender.vim'
    Plug 'reedes/vim-colors-pencil'
    Plug 'arcticicestudio/nord-vim'
    Plug 'gryf/wombat256grf'
    Plug 'NLKNguyen/papercolor-theme'
    " Adds linter
    Plug 'dense-analysis/ale'
    " Add completion COC
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " commenter
    Plug 'tpope/vim-commentary'
    " sneak
    Plug 'justinmk/vim-sneak'
    " quick scope
    Plug 'unblevable/quick-scope'
    " colorizer
    Plug 'norcalli/nvim-colorizer.lua'    

call plug#end()

