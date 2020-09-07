" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif
"*****************************************************************************
"" Basic Settings
"*****************************************************************************
syntax on
set mouse=v
" "" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase
set nu
set relativenumber
set smarttab
set cindent
autocmd BufEnter * silent! :lcd%:p:h
au FileType * set fo-=c fo-=r fo-=o "disable auto comment new line
set noshowmatch
set nohlsearch
set noerrorbells
set noswapfile
set undodir=~/.vim/undodir
set undofile
set termguicolors
set scrolloff=8
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=30
set autoread
" don't give |ins-completion-menu| messages.
" always show signcolumns
set signcolumn=yes
set hidden                              " Required to keep multiple buffers open multiple buffers
set nowrap                              " Display long lines as just one line
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
set timeoutlen=500                      " By default timeoutlen is 1000 
set guifont=Fira\ Code\ Nerd\ Font

" Specify a directory for plugins
call plug#begin('~/.vim/plugged')
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-commentary'

  if exists('g:vscode')
    " Easy motion for VSCode
    Plug 'asvetliakov/vim-easymotion'
  else
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
    " #------------------------------------------------------------------------------#
    " #                                    Themes                                    #
    " #------------------------------------------------------------------------------#
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'morhetz/gruvbox'
    Plug 'mg979/vim-xtabline' " tab line
        " Colorizer
    Plug 'norcalli/nvim-colorizer.lua'
    " Rainbow brackets
    Plug 'luochen1990/rainbow'
    " Plug 'srcery-colors/srcery-vim'
    " Plug 'joshdick/onedark.vim'
    " Plug 'rakr/vim-one'
    " Plug 'KeitaNakamura/neodark.vim'
    " #------------------------------------------------------------------------------#
    " #                                 Utils things                                 #
    " #------------------------------------------------------------------------------#
    Plug 'scrooloose/nerdcommenter'
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'tpope/vim-surround'
    Plug 'easymotion/vim-easymotion' 
    Plug 'romainl/vim-cool'  " Disable highlight when searched
    Plug 'mattn/emmet-vim'
    Plug 'junegunn/goyo.vim' " Zen mode
    Plug 'mhinz/vim-startify' " Start screen
    Plug 'psliwka/vim-smoothie' " Smooth scroll
    Plug 'suy/vim-context-commentstring' " Useful for React Commenting 
    Plug 'terryma/vim-multiple-cursors'
     " Plug 'tmhedberg/SimpylFold' "fold code
    Plug 'christoomey/vim-system-copy'
    Plug 'christoomey/vim-sort-motion'
    Plug 'cometsong/commentframe.vim'
    Plug 'tpope/vim-repeat'
    Plug 'alvan/vim-closetag' "auto close tags
    Plug 'AndrewRadev/sideways.vim' " move params funciton easily
    Plug 'tpope/vim-abolish' "turn case crs crc etc
    Plug 'elzr/vim-json' " display indents (for yam) :IndentLineToggle
    Plug 'Yggdroot/indentLine' " display indents (for yam) :IndentLineToggle
    
    " git
    Plug 'ryanoasis/vim-devicons'
    Plug 'airblade/vim-gitgutter'
    Plug 'airblade/vim-rooter'
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb' " required by fugitive to :Gbrowse
    "session
    Plug 'xolox/vim-misc'
    Plug 'xolox/vim-session'
    Plug 'junegunn/fzf', { 'do': './install --bin' }
    Plug 'junegunn/fzf.vim'
    Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
    Plug 'antoinemadec/coc-fzf', {'branch': 'release'}
    Plug 'stsewd/fzf-checkout.vim'
    " Plug 'mike-hearn/vim-combosearch'
    
    
    " #------------------------------------------------------------------------------#
    " #                                 react things                                 #
    " #------------------------------------------------------------------------------#
    Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
    " syntax highlight
    Plug 'chemzqm/vim-jsx-improve'
    Plug 'yuezk/vim-js'
    Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
    " Plug 'maxmellon/vim-jsx-pretty'
    " Plug 'mxw/vim-jsx'
    Plug 'jparise/vim-graphql'
  endif

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
tnoremap <space>t <C-\><C-n> 

"*****************************************************************************
"" Commands
"*****************************************************************************
" remove trailing whitespaces
command! FixWhitespace :%s/\s\+$//e

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
" #                                 Custom theme                                 #
" #------------------------------------------------------------------------------#

"Credit joshdick
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

" #------------------------------------------------------------------------------#
" #                                plugin settings                               #
" #------------------------------------------------------------------------------#

let g:indentLine_char = '┊'
let g:NERDSpaceDelims = 1
" let g:vim_jsx_pretty_colorful_config = 1 
au FileType * set fo-=c fo-=r fo-=o
" session management
let g:session_directory = "~/nvim/session"
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1
command! -nargs=0 Prettier :CocCommand prettier.formatFile

let g:vim_json_syntax_conceal = 0
" for jsx comment
let g:NERDCustomDelimiters = { 'javascript.js': { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/' }, 'typescript.jsx': { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/' }}
"Start the completion menu with CTRL-N/CTRL-P, then run this map.
" if executable('rg')
    " let g:rg_derive_root='true'
" endif


" #------------------------------------------------------------------------------#
" #                                custom settings                               #
" #------------------------------------------------------------------------------#

autocmd FileType apache setlocal commentstring=#\ %s
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear
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

" if ! exists("g:CheckUpdateStarted")
    " let g:CheckUpdateStarted=1
    " call timer_start(1,'CheckUpdate')
" endif

" update file if any change from another text editor
" function! CheckUpdate(timer)
    " silent! checktime
    " call timer_start(1000,'CheckUpdate')
" endfunction

let g:rooter_change_directory_for_non_project_files = ''
autocmd InsertEnter *.json setlocal concealcursor=
autocmd InsertLeave *.json setlocal concealcursor=inc

autocmd FileType css,scss set iskeyword=@,48-57,_,-,?,!,192-255
if exists('g:vscode')
  " VS Code extension
  source $HOME/.config/nvim/vscode/settings.vim
  source $HOME/.config/nvim/plug-config/easymotion.vim
else

  " Themes
  source $HOME/.config/nvim/themes/syntax.vim
  source $HOME/.config/nvim/themes/gruvbox.vim
  source $HOME/.config/nvim/themes/airline.vim
  " Plugin Configuration
  " source $HOME/.config/nvim/keys/which-key.vim
  source $HOME/.config/nvim/plug-config/rainbow.vim
  " source $HOME/.config/nvim/plug-config/rnvimr.vim
  " source $HOME/.config/nvim/plug-config/better-whitespace.vim
  source $HOME/.config/nvim/plug-config/fzf.vim
  " source $HOME/.config/nvim/plug-config/sneak.vim
  " source $HOME/.config/nvim/plug-config/codi.vim
  " source $HOME/.config/nvim/plug-config/vim-wiki.vim
  source $HOME/.config/nvim/plug-config/coc.vim
  source $HOME/.config/nvim/plug-config/nerd-commenter.vim
  " source $HOME/.config/nvim/plug-config/goyo.vim
  "source $HOME/.config/nvim/plug-config/vim-rooter.vim
  source $HOME/.config/nvim/plug-config/start-screen.vim
  " source $HOME/.config/nvim/plug-config/gitgutter.vim
  " source $HOME/.config/nvim/plug-config/git-messenger.vim
  " source $HOME/.config/nvim/plug-config/closetags.vim
  " source $HOME/.config/nvim/plug-config/floaterm.vim
  " source $HOME/.config/nvim/plug-config/vista.vim
  "source $HOME/.config/nvim/plug-config/xtabline.vim
  source $HOME/.config/nvim/plug-config/polyglot.vim
  luafile $HOME/.config/nvim/lua/plug-colorizer.lua
  " source $HOME/.config/nvim/plug-config/far.vim
  " source $HOME/.config/nvim/plug-config/tagalong.vim
  " source $HOME/.config/nvim/plug-config/illuminate.vim
  " source $HOME/.config/nvim/plug-config/bracey.vim
  " source $HOME/.config/nvim/plug-config/asynctask.vim
  " source $HOME/.config/nvim/plug-config/window-swap.vim
  " source $HOME/.config/nvim/plug-config/markdown-preview.vim
  " source $HOME/.config/nvim/plug-config/vimspector.vim " Uncomment if you want to use Vimspector
  " source $HOME/.config/nvim/plug-config/ale.vim
endif
source ~/.config/nvim/key-mapping.vim
let g:vim_jsx_pretty_disable_tsx	= 1
let g:vim_jsx_pretty_colorful_config= 1
let g:vim_jsx_pretty_highlight_close_tag = 1
