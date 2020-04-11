scriptencoding utf-8
source ~/.config/nvim/plugins.vim
source ~/.config/nvim/coc-settings.vim
source ~/.config/nvim/key-mapping.vim
let g:rainbow_active = 1

"*****************************************************************************
"" Basic Settings
"*****************************************************************************
" general
"" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
" "" Fix backspace indent
set backspace=indent,eol,start
" set listchars=tab:▸\ ,trail:· " Display extra whitespace characters
set showcmd       " display incomplete commands
set shell=zsh " Set bash as the prompt for Vim
" "" Tabs. May be overridden by autocmd rules
set tabstop=2
set softtabstop=0
set shiftwidth=2
set termguicolors
" " " always uses spaces instead of tab characters
set expandtab

" "" Enable hidden buffers
set hidden
" "" Fix backspace indent
" "" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase
" " Mouse in visual modes
set mouse=v
" " Blink cursor on error instead of beeping
set visualbell

" set fileformats=unix,dos,mac
" Yank and paste with the system clipboard
" set clipboard=unnamed

autocmd BufEnter * silent! :lcd%:p:h
"*****************************************************************************
"" Visual Settings
"*****************************************************************************
" syntax on
set ruler
set relativenumber
let no_buffers_menu=1
silent! colorscheme gruvbox
set mousemodel=popup
set t_Co=256
" " set gfn=Monospace\ 10
" "" Disable the blinking cursor.
" " set gcr=a:blinkon0
set scrolloff=3

" "" Status bar
set laststatus=2

" "" Use modeline overrides
set modeline
set modelines=10

set title
set titleold="Terminal"
set titlestring=%F
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\
" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv
if exists("*fugitive#statusline")
  set statusline+=%{fugitive#statusline()}
endif


" Whitespace
set wrap
set textwidth=0
set wrapmargin=0
set formatoptions=tcqrn1
set breakindent
set noshiftround

" Cursor motion
set scrolloff=3
set matchpairs+=<:> " use % to jump between pairs

" Rendering
set ttyfast

let python_highlight_all=1
syntax on

"*****************************************************************************
"" Abbreviations
"*****************************************************************************
"" no one is really happy until you have this shortcuts
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev q1 q!
cnoreabbrev w1 w!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall
cabbrev t tabnew
nnoremap ; :
vnoremap ; :


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

"" txt
" augroup vimrc-wrapping
  " autocmd!
  " autocmd BufRead,BufNewFile *.txt call s:setupWrapping()
" augroup END

" make/cmake
" augroup vimrc-make-cmake
  " autocmd!
  " autocmd FileType make setlocal noexpandtab
  " autocmd BufNewFile,BufRead CMakeLists.txt setlocal filetype=cmake
" augroup END

set autoread


" ============================================================================ "
" ===                      CUSTOM COLORSCHEME CHANGES                      === "
" ============================================================================ "
"
" Add custom highlights in method that is executed every time a colorscheme is sourced
" See https://gist.github.com/romainl/379904f91fa40533175dfaec4c833f2f for details
" function! s:custom_jarvis_colors()
  " " coc.nvim color changes
  " colorscheme gruvbox
  " hi link CocErrorSign WarningMsg
  " hi link CocWarningSign Number
  " hi link CocInfoSign Type

  " " Make background transparent for many things
  " hi Normal ctermbg=NONE guibg=NONE
  " " hi NonText ctermbg=NONE guibg=NONE
  " hi LineNr ctermfg=NONE guibg=NONE
  " hi SignColumn ctermfg=NONE guibg=NONE
  " hi StatusLine guifg=#16252b guibg=#6699CC
  " hi StatusLineNC guifg=#16252b guibg=#16252b

  " " Try to hide vertical spit and end of buffer symbol
  " " hi VertSplit gui=NONE guifg=#17252c guibg=#17252c
  " " hi EndOfBuffer ctermbg=NONE ctermfg=NONE guibg=#17252c guifg=#17252c

  " " Make background color transparent for git changes
  " hi SignifySignAdd guibg=NONE
  " hi SignifySignDelete guibg=NONE
  " hi SignifySignChange guibg=NONE

  " " Highlight git change signs
  " hi SignifySignAdd guifg=#99c794
  " hi SignifySignDelete guifg=#ec5f67
  " hi SignifySignChange guifg=#c594c5
" endfunction

" autocmd! ColorScheme * call TrailingSpaceHighlights()
" autocmd! ColorScheme * call s:custom_jarvis_colors()
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
autocmd FileType c,cpp setlocal equalprg=clang-format
