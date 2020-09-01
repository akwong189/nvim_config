 " auto installs vim plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    Plug 'sheerun/vim-polyglot' " Better syntax support
    Plug 'ryanoasis/vim-devicons' "Add icons to file explorer
    Plug 'tpope/vim-vinegar'
    Plug 'preservim/nerdtree' | Plug 'Xuyuanp/nerdtree-git-plugin' " File Explorer
    Plug 'jiangmiao/auto-pairs' " Auto pairs for '(' '[' '{'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " FZF
    Plug 'junegunn/fzf.vim'

    Plug 'itchyny/lightline.vim' " Improves bottom bar
    Plug 'itchyny/vim-gitbranch' " Adds gitbranch support to lightline
    Plug 'maximbaz/lightline-ale' " add lightline ale support

    Plug 'luochen1990/rainbow' " Adds rainbow brackets
    Plug 'nathanaelkane/vim-indent-guides' " Provides indent guides
    Plug 'airblade/vim-gitgutter' " Adds Git functions

    " Adds VIM theme
    Plug 'KeitaNakamura/neodark.vim'
    Plug 'joshdick/onedark.vim'
    Plug 'chuling/ci_dark'
    Plug 'arcticicestudio/nord-vim'
    Plug 'jacoborus/tender.vim'
    Plug 'bluz71/vim-nightfly-guicolors'
    Plug 'jaredgorski/spacecamp'
    Plug 'eskilop/NorthernLights.vim'

    Plug 'dense-analysis/ale' " Adds linter

    " Add autocompletion
    Plug 'prabirshrestha/vim-lsp'
    Plug 'mattn/vim-lsp-settings'
    Plug 'Shougo/deoplete.nvim'
    Plug 'lighttiger2505/deoplete-vim-lsp'

    Plug 'tpope/vim-commentary' " commenter
    Plug 'justinmk/vim-sneak' " sneak
    Plug 'unblevable/quick-scope' " quick scope
    Plug 'norcalli/nvim-colorizer.lua' " colorizer
    " Plug 'liuchengxu/vista.vim' " Adds tagbar
    Plug 'majutsushi/tagbar'
    Plug 'machakann/vim-sandwich' " Add surrounding software

call plug#end()

