" Specify a directory for plugins
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

call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'tsony-tsonev/nerdtree-git-plugin'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'airblade/vim-rooter'
Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files
Plug 'scrooloose/nerdcommenter'
"Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

Plug 'christoomey/vim-tmux-navigator'

" themeing
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'srcery-colors/srcery-vim'
Plug 'joshdick/onedark.vim'
Plug 'rakr/vim-one'
Plug 'KeitaNakamura/neodark.vim'
Plug 'mg979/vim-xtabline' " tab line

Plug 'HerringtonDarkholme/yats.vim' " TS Syntax

" syntax highlight
Plug 'chemzqm/vim-jsx-improve'
Plug 'yuezk/vim-js'
" Plug 'maxmellon/vim-jsx-pretty'
" Plug 'mxw/vim-jsx'
Plug 'lilydjwg/colorizer' "colorize all text 
Plug 'luochen1990/rainbow'

" util
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion' 
Plug 'romainl/vim-cool'  "disable highlight when searched
" Start Screen
" Zen mode
Plug 'junegunn/goyo.vim'
Plug 'mhinz/vim-startify'
" Smooth scroll
" Plug 'psliwka/vim-smoothie'
" Text Navigation
" Plug 'unblevable/quick-scope'
" Useful for React Commenting 
Plug 'suy/vim-context-commentstring'

" git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb' " required by fugitive to :Gbrowse
" util
Plug 'terryma/vim-multiple-cursors'
" Plug 'tmhedberg/SimpylFold' "fold code
Plug 'alvan/vim-closetag' "auto close tags
Plug 'christoomey/vim-system-copy'
Plug 'christoomey/vim-sort-motion'
Plug 'cometsong/commentframe.vim'
Plug 'tpope/vim-repeat'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

" #------------------------------------------------------------------------------#
" #                                  crs, crc...                                 #
" #------------------------------------------------------------------------------#
Plug 'tpope/vim-abolish' "turn case
Plug 'nicwest/vim-camelsnek' "turn case

"session
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'

Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'antoinemadec/coc-fzf', {'branch': 'release'}
Plug 'stsewd/fzf-checkout.vim'
Plug 'mike-hearn/vim-combosearch'

Plug 'Yggdroot/indentLine' " display indents (for yam) :IndentLineToggle
Plug 'elzr/vim-json' " display indents (for yam) :IndentLineToggle

" Initialize plugin system
Plug 'mattn/emmet-vim'

"graphql
Plug 'jparise/vim-graphql'

Plug 'AndrewRadev/sideways.vim'

call plug#end()

" cocextensions
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-json', 
  \ 'coc-tailwindcss',
  \ 'coc-yank', 
  \ 'coc-highlight',
  \ 'coc-marketplace', 
  \ 'coc-word', 
  \ 'coc-explorer', 
  \ 'coc-terminal', 
  \ ]
" from readme

" #------------------------------------------------------------------------------#
" #                                 coc-settings                                 #
" #------------------------------------------------------------------------------#
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> gp <Plug>(coc-diagnostic-prev-error)
nmap <silent> gn <Plug>(coc-diagnostic-next-error)
" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>
nnoremap <leader>pw :Rg <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>prw :CocSearch <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>cr :CocRestart

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <F2> <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <C-d> <Plug>(coc-range-select)
xmap <silent> <C-d> <Plug>(coc-range-select)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
" set statusline+=\ %*
" set stl+=%{expand('%:~:.')}
" set statusline+=\ %*
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
" nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
" Explorer
let g:coc_explorer_global_presets = {
\   'floating': {
\      'position': 'floating',
\   },
\   'floatingLeftside': {
\      'position': 'floating',
\      'floating-position': 'left-center',
\      'floating-width': 30,
\   },
\   'floatingRightside': {
\      'position': 'floating',
\      'floating-position': 'right-center',
\      'floating-width': 30,
\   },
\   'simplify': {
\     'file.child.template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]'
\   }
\ }

autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif

" Snippets
" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)
nmap <space>e :CocCommand explorer --preset floating<CR>

" set mouse=a

" nnoremap <silent> <space><space> :<C-u>CocFzfList<CR>
" nnoremap <silent> <space>a       :<C-u>CocFzfList diagnostics<CR>
" nnoremap <silent> <space>b       :<C-u>CocFzfList diagnostics --current-buf<CR>
" nnoremap <silent> <space>c       :<C-u>CocFzfList commands<CR>
" nnoremap <silent> <space>e       :<C-u>CocFzfList extensions<CR>
" nnoremap <silent> <space>l       :<C-u>CocFzfList location<CR>
" nnoremap <silent> <space>o       :<C-u>CocFzfList outline<CR>
" nnoremap <silent> <space>s       :<C-u>CocFzfList symbols<CR>
" nnoremap <silent> <space>p       :<C-u>CocFzfListResume<CR>
" let g:coc_fzf_preview = ''
" let g:coc_fzf_opts = []

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
" colorscheme one
" hi Normal guibg=NONE ctermbg=NONE

" #------------------------------------------------------------------------------#
" #                                plugin settings                               #
" #------------------------------------------------------------------------------#

let g:indentLine_char = '┊'

" ctrlp
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:NERDSpaceDelims = 1
let g:vim_jsx_pretty_colorful_config = 1 
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
inoremap <expr> <F1> fzf#vim#complete({'source': map(complete_info().items, "v:val.word")})

let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.php,*.jsx, *.tsx"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ }
let g:closetag_shortcut = '>'
" coc auto enter format work awseome when enter use for coc-pairs
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
				\: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" if executable('rg')
    " let g:rg_derive_root='true'
" endif

if exists("*fugitive#statusline")
  set statusline+=%{fugitive#statusline()}
endif

" #------------------------------------------------------------------------------#
" #                                custom settings                               #
" #------------------------------------------------------------------------------#

" create a dir if not exists when use te command
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear
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
if ! exists("g:CheckUpdateStarted")
    let g:CheckUpdateStarted=1
    call timer_start(1,'CheckUpdate')
endif

" update file if any change from another text editor
function! CheckUpdate(timer)
    silent! checktime
    call timer_start(1000,'CheckUpdate')
endfunction

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
  source $HOME/.config/nvim/plug-config/closetags.vim
  " source $HOME/.config/nvim/plug-config/floaterm.vim
  " source $HOME/.config/nvim/plug-config/vista.vim
  "source $HOME/.config/nvim/plug-config/xtabline.vim
  source $HOME/.config/nvim/plug-config/polyglot.vim
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
