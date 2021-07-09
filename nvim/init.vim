" auto-install vim-plug
" if empty(glob('~/.config/nvim/autoload/plug.vim'))
  " silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    " \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  " "autocmd VimEnter * PlugInstall
  " autocmd VimEnter * PlugInstall | source $MYVIMRC
" endif
"*****************************************************************************
"" Basic Settings
"*****************************************************************************
syntax on
" Ignore certain files and folders when globbing
set wildignore+=*.o,*.obj,*.bin,*.dll,*.exe
set wildignore+=*/.git/*,*/.svn/*,*/__pycache__/*,*/build/**
set wildignore+=*.jpg,*.png,*.jpeg,*.bmp,*.gif,*.tiff,*.svg,*.ico
set wildignore+=*.pyc
set wildignore+=*.DS_Store
set wildignore+=*.aux,*.bbl,*.blg,*.brf,*.fls,*.fdb_latexmk,*.synctex.gz
set wildignorecase  " ignore file and dir name cases in cmd-completion
set mouse=v
set noshowmode
" "" Searching
set hlsearch incsearch
set ignorecase smartcase
set nu relativenumber
set smarttab
set cindent
autocmd BufEnter * silent! :lcd%:p:h
au FileType * set fo-=c fo-=r fo-=o "disable auto comment new line
set noshowmatch
set visualbell noerrorbells  " Do not use visual and errorbells
set noswapfile
set undodir=~/.vim/undodir
set undofile
set termguicolors
" set scrolloff=8
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=250
set autoread
" don't give |ins-completion-menu| messages.
" always show signcolumns
set hidden                              " Required to keep multiple buffers open multiple buffers
" set nowrap                              " Display long lines as just one line
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler              			            " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=2                           " Insert 2 spaces for a tab
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set laststatus=2                        " Always display the status line
set showtabline=2                       " Always show tabs
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set shortmess+=c                        " Don't pass messages to |ins-completion-menu|.
set signcolumn=yes                      " Always show the signcolumn, otherwise it would shift the text each time
set timeoutlen=300                      " By default timeoutlen is 1000
set guifont=Fira\ Code\ Nerd\ Font

" Specify a directory for plugins
call plug#begin('~/.config/nvim/autoload/plugged')
  Plug 'tpope/vim-repeat'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  "fzf
  Plug 'junegunn/fzf', { 'do': './install --bin' }
  Plug 'junegunn/fzf.vim'
  Plug 'antoinemadec/coc-fzf', {'branch': 'release'}
  Plug 'stsewd/fzf-checkout.vim'
  Plug 'morhetz/gruvbox'
  " #------------------------------------------------------------------------------#
  " #                                 Utils things                                 #
  " #------------------------------------------------------------------------------#
  Plug 'voldikss/vim-floaterm'
  Plug 'scrooloose/nerdcommenter'
  Plug 'tpope/vim-surround'
  Plug 'easymotion/vim-easymotion'
  Plug 'mattn/emmet-vim'
  Plug 'mhinz/vim-startify' " Start screen
  Plug 'terryma/vim-multiple-cursors'
  Plug 'justinmk/vim-sneak'
  " Plug 'romainl/vim-cool'  " Disable highlight when searched
  " Plug 'junegunn/goyo.vim' " Zen mode
  " Plug 'suy/vim-context-commentstring' " Useful for React Commenting
   " Plug 'tmhedberg/SimpylFold' "fold code
  Plug 'christoomey/vim-system-copy'
  Plug 'christoomey/vim-sort-motion'
  Plug 'cometsong/commentframe.vim'
  Plug 'tpope/vim-repeat' "repeat exts when user accro
  Plug 'tpope/vim-abolish' "turn case crs crc etc
  Plug 'Yggdroot/indentLine' " display indents (for yam) :IndentLineToggle
  " git
  Plug 'ryanoasis/vim-devicons'
  Plug 'airblade/vim-rooter'
  Plug 'airblade/vim-gitgutter'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rhubarb' " required by fugitive to :Gbrowse
  "session
  Plug 'xolox/vim-misc'
  Plug 'xolox/vim-session'

  Plug 'bkad/CamelCaseMotion'


  " #------------------------------------------------------------------------------#
  " #                                     Theme#
  " #------------------------------------------------------------------------------#
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'mg979/vim-xtabline' " tab line


  " #------------------------------------------------------------------------------#
  " #                                 react things                                 #
  " #------------------------------------------------------------------------------#
  Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
  Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
  Plug 'alvan/vim-closetag'
  Plug 'dsznajder/vscode-es7-javascript-react-snippets', { 'do': 'yarn install --frozen-lockfile && yarn compile' }
  Plug 'kien/rainbow_parentheses.vim'

  " syntax highlight
  " Plug 'chemzqm/vim-jsx-improve'
  " Plug 'yuezk/vim-js'
  " Plug 'maxmellon/vim-jsx-pretty'
  " Plug 'mxw/vim-jsx'
  " Plug 'jparise/vim-graphql'
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'

  Plug 'kyazdani42/nvim-web-devicons'
  " Plug 'romgrk/barbar.nvim'
  Plug 'akinsho/nvim-bufferline.lua'
  Plug 'monaqa/dial.nvim'
  Plug 'edluffy/specs.nvim'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
  Plug 'p00f/nvim-ts-rainbow'
  " Plug 'kyazdani42/nvim-web-devicons' " Recommended (for coloured icons)
" Plug 'ryanoasis/vim-devicons' Icons without colours
" Plug 'akinsho/nvim-bufferline.lua'
  Plug 'mxw/vim-jsx'

  "end plug
call plug#end()

"*****************************************************************************
"" Abbreviations
"*****************************************************************************
"" no one is really happy until you have this shortcuts
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev q1 q!
cnoreabbrev or OR
cnoreabbrev w1 w!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall
cnoreabbrev qa1 qa!
cnoreabbrev ag Ag
cnoreabbrev rg Rg
cabbrev t tabnew
nnoremap ; :
vnoremap ; :
" tnoremap <space>t <C-\><C-n>

"*****************************************************************************
"" Commands
"*****************************************************************************
" remove trailing whitespaces
command! FixWhitespace :%s/\s\+$//e
command! EditConfig :tabe ~/.config

"*****************************************************************************
"" Convenience variables
"*****************************************************************************

" Reload icons after init source
if exists('g:loaded_webdevicons')
  call webdevicons#refresh()
endif

"*****************************************************************************
"" Autocmd Rules
"*****************************************************************************
"" The PC is fast enough, do syntax highlight syncing from start unless 200 lines
" augroup vimrc-sync-fromstart
  " autocmd!
  " autocmd BufEnter * :syntax sync maxlines=200
" augroup END

"" Remember cursor position
augroup vimrc-remember-cursor-position
  autocmd!
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END


" #------------------------------------------------------------------------------#
" #                                plugin settings                               #
" #------------------------------------------------------------------------------#

let g:indentLine_char = '┊'
let g:NERDSpaceDelims = 1
au FileType * set fo-=c fo-=r fo-=o
" session management
let g:session_directory = "~/.config/nvim/session"
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1

let g:vim_json_syntax_conceal = 0

" #------------------------------------------------------------------------------#
" #                                custom settings                               #
" #------------------------------------------------------------------------------#


" create a dir if not exists when use te command
function s:MkNonExDir(file, buf)
    if empty(getbufvar(a:buf, '&buftype')) && a:file!~#'\v^\w+\:\/'
        let dir=fnamemodify(a:file, ':h')
        if !isdirectory(dir)
            call mkdir(dir, 'p')
        endif
    endif
endfunction
augroup BWCCreateDir
    autocmd!
    autocmd BufWritePre * :call s:MkNonExDir(expand('<afile>'), +expand('<abuf>'))
augroup END

let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsEditSplit="vertical"

 " Themes
source $HOME/.config/nvim/themes/syntax.vim
source $HOME/.config/nvim/themes/gruvbox.vim
source $HOME/.config/nvim/CustomConfig/extract-variable.vim
source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/floaterm.vim
source $HOME/.config/nvim/plug-config/nerd-commenter.vim
source $HOME/.config/nvim/plug-config/vim-rooter.vim
source $HOME/.config/nvim/plug-config/start-screen.vim
source $HOME/.config/nvim/plug-config/closetags.vim
source $HOME/.config/nvim/plug-config/gitgutter.vim
source $HOME/.config/nvim/plug-config/sneak.vim
source $HOME/.config/nvim/plug-config/floatinput.vim
source $HOME/.config/nvim/plug-config/vim-wiki.vim
source $HOME/.config/nvim/plug-config/xtabline.vim
source $HOME/.config/nvim/themes/airline.vim
source $HOME/.config/nvim/themes/CamelCaseMotion.vim
autocmd Filetype json let g:indentLine_setConceal = 0

source ~/.config/nvim/key-mapping.vim
