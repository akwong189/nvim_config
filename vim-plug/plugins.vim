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
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Nerd commenter (really don't know what it does)
    " Plug 'scrooloose/nerdcommenter'
    " Improves bottom bar
    Plug 'vim-airline/vim-airline'
    " Creates tags for code
    Plug 'majutsushi/tagbar'
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
    "fzf
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
call plug#end()