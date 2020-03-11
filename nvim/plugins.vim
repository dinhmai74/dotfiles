" ============================================================================ "
" ===                               PLUGINS                                === "
" ============================================================================ "

" check whether vim-plug is installed and install it if necessary
let plugpath = expand('<sfile>:p:h'). '/autoload/plug.vim'
if !filereadable(plugpath)
    if executable('curl')
        let plugurl = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
        call system('curl -fLo ' . shellescape(plugpath) . ' --create-dirs ' . plugurl)
        if v:shell_error
            echom "Error downloading vim-plug. Please install it manually.\n"
            exit
        endif
    else
        echom "vim-plug not installed. Please install it manually or install curl.\n"
        exit
    endif
endif

call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion' 

" decorations
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdcommenter'
Plug 'lilydjwg/colorizer' "colorize all text 
Plug 'KabbAmine/vCoolor.vim' "color picker
" Plug 'luochen1990/rainbow'
Plug 'frazrepo/vim-rainbow'

" Themes
Plug 'drewtempelmeyer/palenight.vim'
Plug 'morhetz/gruvbox'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'sainnhe/vim-color-forest-night'

" git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb' " required by fugitive to :Gbrowse

" all syntax
Plug 'sheerun/vim-polyglot'
Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
Plug 'mattn/emmet-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'mgechev/vim-jsx'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'pangloss/vim-javascript'
Plug 'jelera/vim-javascript-syntax'
" Snippet support
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'

" util
Plug 'terryma/vim-multiple-cursors'
Plug 'jiangmiao/auto-pairs' "easy enter new line in bracket
Plug 'alvan/vim-closetag' "auto close tags
Plug 'tmhedberg/SimpylFold' "fold code
Plug 'christoomey/vim-tmux-navigator' "navigate screen
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'christoomey/vim-system-copy'
Plug 'christoomey/vim-sort-motion'
Plug 'cometsong/commentframe.vim'
Plug 'tpope/vim-abolish' "turn case
Plug 'nicwest/vim-camelsnek' "turn case
" Print function signatures in echo area
Plug 'Shougo/echodoc.vim'
" Generate JSDoc commands based on function signature
Plug 'heavenshell/vim-jsdoc'

" Improved motion in Vim
Plug 'easymotion/vim-easymotion'


"session
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'
"colorscheme
Plug 'joshdick/onedark.vim'
" Plug 'arcticicestudio/nord-vim'
" Plug 'wadackel/vim-dogrun'
" Plug 'mhartington/oceanic-next'

"coc
" #------------------------------------------------------------------------------#
" #                                  crs, crc...                                 #
" #------------------------------------------------------------------------------#
" Plug 'neoclide/coc-yank'

Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

" #------------------------------------------------------------------------------#
" #                                    python                                    #
" #------------------------------------------------------------------------------#
Plug 'vim-scripts/indentpython.vim'
Plug 'nvie/vim-flake8'

call plug#end()
