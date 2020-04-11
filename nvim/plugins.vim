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
" Plug 'KabbAmine/vCoolor.vim' "color picker
" Plug 'luochen1990/rainbow'
Plug 'frazrepo/vim-rainbow'

" Themes
" Plug 'drewtempelmeyer/palenight.vim'
Plug 'morhetz/gruvbox'
" Plug 'joshdick/onedark.vim'
" Plug 'arcticicestudio/nord-vim'
" Plug 'wadackel/vim-dogrun'
" Plug 'mhartington/oceanic-next'
" Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
" Plug 'sainnhe/vim-color-forest-night'

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
" Plug 'leafgarland/typescript-vim'
" Plug 'peitalin/vim-jsx-typescript'
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
Plug 'doums/coBra'
" #------------------------------------------------------------------------------#
" #                                  crs, crc...                                 #
" #------------------------------------------------------------------------------#
Plug 'tpope/vim-abolish' "turn case
Plug 'nicwest/vim-camelsnek' "turn case
" Print function signatures in echo area
Plug 'Shougo/echodoc.vim'
" Generate JSDoc commands based on function signature
" Plug 'heavenshell/vim-jsdoc'

" Improved motion in Vim
Plug 'easymotion/vim-easymotion'


"session
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'

"coc
" Plug 'neoclide/coc-yank'

Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

" #------------------------------------------------------------------------------#
" #                                    python                                    #
" #------------------------------------------------------------------------------#
Plug 'vim-scripts/indentpython.vim'
Plug 'nvie/vim-flake8'
Plug 'Yggdroot/indentLine' " display indents (for yam) :IndentLineToggle
Plug 'vim-python/python-syntax' " better python syntax

call plug#end()

" #------------------------------------------------------------------------------#
" #                                plugin settings                               #
" #------------------------------------------------------------------------------#

" ============================================================================ "
" ===                           general plugin settings 							 		 === "
" ============================================================================ "
" nmap <C-c> :NERDTreeToggle<CR>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

" prettier command for coc
command! -nargs=0 Prettier :CocCommand prettier.formatFile
" run prettier on save
"let g:prettier#autoformat = 0
"autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

" ctrlp
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:airline_theme='deus'
let g:NERDSpaceDelims = 1
let g:vim_jsx_pretty_colorful_config = 1 
au FileType * set fo-=c fo-=r fo-=o
" session management
let g:session_directory = "~/.config/nvim/session"
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1

let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.php,*.jsx,*.tsx"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ }

" rainbow
" au FileType c,cpp,objc,objcpp,tsx,js,ts call rainbow#load()
let g:rainbow_active = 1

" #------------------------------------------------------------------------------#
" #                                  vim-airline                                 #
" #------------------------------------------------------------------------------#
try
" Enable extensions
let g:airline_extensions = ['branch', 'hunks', 'coc']

" Update section z to just have line number
let g:airline_section_z = airline#section#create(['linenr'])

" Do not draw separators for empty sections (only for the active window) >
let g:airline_skip_empty_sections = 1

" Smartly uniquify buffers names with similar filename, suppressing common parts of paths.
let g:airline#extensions#tabline#formatter = 'unique_tail'

" Custom setup that removes filetype/whitespace from default vim airline bar
let g:airline#extensions#default#layout = [['a', 'b', 'c'], ['x', 'z', 'warning', 'error']]

" Customize vim airline per filetype
" 'nerdtree'  - Hide nerdtree status line
" 'list'      - Only show file type plus current line number out of total
let g:airline_filetype_overrides = {
  \ 'nerdtree': [ get(g:, 'NERDTreeStatusline', ''), '' ],
  \ 'list': [ '%y', '%l/%L'],
  \ }

" Enable powerline fonts
let g:airline_powerline_fonts = 1

" Enable caching of syntax highlighting groups
let g:airline_highlighting_cache = 1

" Define custom airline symbols
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" Don't show git changes to current file in airline
let g:airline#extensions#hunks#enabled=0

catch
  echo 'Airline not installed. It should work after running :PlugInstall'
endtry

"" fzf.vim
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__
let $FZF_DEFAULT_COMMAND =  "find * -path '*/\.*' -prune -o -path 'node_modules/**' -prune -o -path 'target/**' -prune -o -path 'dist/**' -prune -o  -type f -print -o -type l -print 2> /dev/null"


" vim-airline
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" vim-airline
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1

if !exists('g:airline_powerline_fonts')
  let g:airline#extensions#tabline#left_sep = ' '
  let g:airline#extensions#tabline#left_alt_sep = '|'
  let g:airline_left_sep          = '▶'
  let g:airline_left_alt_sep      = '»'
  let g:airline_right_sep         = '◀'
  let g:airline_right_alt_sep     = '«'
  let g:airline#extensions#branch#prefix     = '⤴' "➔, ➥, ⎇
  let g:airline#extensions#readonly#symbol   = '⊘'
  let g:airline#extensions#linecolumn#prefix = '¶'
  let g:airline#extensions#paste#symbol      = 'ρ'
  let g:airline_symbols.linenr    = '␊'
  let g:airline_symbols.branch    = '⎇'
  let g:airline_symbols.paste     = 'ρ'
  let g:airline_symbols.paste     = 'Þ'
  let g:airline_symbols.paste     = '∥'
  let g:airline_symbols.whitespace = 'Ξ'
else
  let g:airline#extensions#tabline#left_sep = ''
  let g:airline#extensions#tabline#left_alt_sep = ''

  " powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ''
endif


"OTHER PLUGIN SETTINGS
"better syntax in python 
let python_highlight_all = 1
"indentLine setting You can also use one of ¦, ┆, │, ⎸, or ▏
" let g:indentLine_char = '┊⎸'
let g:indentLine_char = '┊'
" let g:indentLine_char_list = ['|', '¦', '┆', '┊']

filetype indent plugin on

