set shell=zsh " Set bash as the prompt for Vim
set backspace=2   " Backspace deletes like most programs in insert mode
set nobackup
set nowritebackup
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set history=50
set ruler         " show the cursor position all the tim
set showcmd       " display incomplete commands
set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running commands
set noshowmode
set timeoutlen=1000
set ttimeoutlen=0
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab
set inccommand=nosplit
set scrolloff=3
set listchars=tab:▸\ ,trail:· " Display extra whitespace characters
set hidden
set inccommand=nosplit
   
" Line numbers
set number
set numberwidth=5
set nocompatible  
set autowrite     " Automatically :write before running commands
filetype off            " required
" Specify a directory for plugins
" - For Neovim: 
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')
" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'
" Initialize plugin system
"


Plug 'sheerun/vim-polyglot'
Plug 'trevordmiller/nova-vim'

Plug 'itchyny/lightline.vim'  "beauty line
Plug 'terryma/vim-multiple-cursors'
"Mangers file
Plug 'airblade/vim-rooter'
Plug 'ctrlpvim/ctrlp.vim'                                                     
Plug 'scrooloose/nerdtree'                                                  

"Better vim
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'          "find word
Plug 'kabbamine/vcoolor.vim'              "find good color

"Snippets
Plug 'honza/vim-snippets'
Plug 'tmhedberg/SimpylFold' "fold code
Plug 'chun-yang/auto-pairs' "insert,or delete brackets,parents,quote in pairs
Plug 'alvan/vim-closetag' "auto close tags
 "react snippets
 Plug 'mxw/vim-jsx'

 "html snippets
 Plug 'rstacruz/sparkup'
 "css
 Plug 'mattn/emmet-vim'                                                      
 Plug 'ap/vim-css-color'
"Beautyvim
Plug 'bling/vim-airline'

"js syntax
Plug 'jelera/vim-javascript-syntax'
Plug 'pangloss/vim-javascript'
Plug 'isruslan/vim-es6'
"typescript
Plug 'leafgarland/typescript-vim'
"react syntax
Plug 'jaxbot/syntastic-react'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'mtscout6/vim-cjsx'
Plug 'jsx/jsx.vim'
Plug 'jsx/jsx'
Plug 'vim-syntastic/syntastic'
Plug 'w0rp/ale'
"Suggestion 
Plug 'strml/jsxhint'
Plug 'epilande/vim-es2015-snippets'
Plug 'epilande/vim-react-snippets'


call plug#end()

" this is shitty nvim path
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

" Tiny init.vim for deoplete

set runtimepath+=~/.local/share/nvim/plugged/deoplete.nvim
set completeopt+=noinsert,noselect
set completeopt-=preview

hi Pmenu    gui=NONE    guifg=#c5c8c6 guibg=#373b41
hi PmenuSel gui=reverse guifg=#c5c8c6 guibg=#373b41

let g:deoplete#enable_at_startup = 1

filetype plugin indent on

" end nvim path



filetype plugin indent on    " required   
syntax enable
set encoding=utf-8
set nu
"set close tag
:set tabstop=2
:set shiftwidth=2
:set expandtab

"set tab to go next suggestion instead of ctrl-n
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

map <C-m> :NERDTreeToggle<CR>
nmap ev :tabedit $MYVIMRC<CR>

"swap screen
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
nnoremap <c-h> <c-w>h

"custom airblad/vim-rooter
"let g:rooter_change_directory_for_non_project_files = 'current'

"set path to relative
:autocmd InsertEnter * let save_cwd = getcwd() | set autochdir
:autocmd InsertLeave * set noautochdir | execute 'cd' fnameescape(save_cwd)

" easymotion
map <Leader> <Plug>(easymotion-prefix)
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)
" s{char}{char} to move to {char}{char}
"
nmap s <Plug>(easymotion-overwin-f2)
" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)
" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)
map  N <Plug>(easymotion-prev)
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)

" Mouse ( see :help mouse-using )
syntax enable
set mouse=nvic
 "colorscheme nova
set autoread
au CursorHold * checktime  
autocmd BufEnter,FocusGained * checktime
" Clipbord
set clipboard+=unnamedplus  " use clipboard ( see : help clipboard )
"set tab to go next suggestion instead of ctrl-n
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" filenames like *.xml, *.xhtml, ...
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js,*jsx,*.ts'
let g:closetag_emptyTags_caseSensitive = 1
let g:vcoolor_map = '<C-c>'
"#FFAABBQuick fold
nnoremap <space> za    
nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>
set foldmethod=indent
set foldlevel=99
set encoding=utf-8

let g:jsx_ext_required = 0
let g:jsx_pragma_required = 1

"ultisnips
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsSnippetDirectories = ['~/.config/nvim/UltiSnips', 'UltiSnips']
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
set pastetoggle=<F2>
"syntastic for react settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_typescript_checkers = ['tslint', 'tsc']
let g:syntastic_javascript_eslint_exe = 'npm run lint --'
  let g:ale_fixers = {
  \   'javascript': [
  \       'eslint',
  \       'prettier',
  \   ],
  \}

   let g:ale_linters = {
\   'javascript': ['eslint','flow'],
\}

let g:ale_fix_on_save = 1
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1
let g:ale_set_highlights = 0
let g:airline#extensions#ale#enabled = 1


nmap <F8> <Plug>(ale_fix)

"deoplete- flow setting

function! StrTrim(txt)
  return substitute(a:txt, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')
endfunction

let g:flow_path = StrTrim(system('PATH=$(npm bin):$PATH && which flow'))

if g:flow_path != 'flow not found'
  let g:deoplete#sources#flow#flow_bin = g:flow_path
endif

" Use a slightly slimmer error pointer
let g:ale_sign_error = '✖'
hi ALEErrorSign guifg=#DF8C8C
let g:ale_sign_warning = '⚠'
hi ALEWarningSign guifg=#F2C38

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

