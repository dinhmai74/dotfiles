"*****************************************************************************
"" Mappings
"*****************************************************************************
inoremap jk <ESC>

"" Split
nnoremap th  :tabfirst<CR>
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap te  :tabe <C-R>=expand("%:p:h") . "/" <CR>
nnoremap tm  :!mkdir <C-R>=expand("%:p:h") . "/" <CR>
nnoremap tn  :tabnext<Space>
nnoremap td  :tabclose<CR>
nnoremap tb  :e#<CR>
nnoremap gb :e#<CR>
noremap <Leader>ee :e <C-R>=expand("%:p:h") . "/" <CR>

"" Tabs
nnoremap <Tab> gt
nnoremap <S-Tab> gT
nnoremap <silent> <S-t> :tabnew<CR>

" map dir
nnoremap <leader>. :lcd %:p:h<CR>
"" Opens a tab edit command with the path of the currently edited file filled
noremap <Leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>
" Delete current visual selection and dump in black hole buffer before pasting
" Used when you want to paste over something without it getting copied to
" Vim's default buffer
vnoremap <leader>p "_dP
noremap YY "+y<CR>
" noremap <leader>p "+gP<CR>
noremap XX "+x<CR>

"" Buffer nav
noremap <leader>z :bp<CR>
noremap <leader>q :bp<CR>
noremap <leader>x :bn<CR>
noremap <leader>w :bn<CR>

"" Close buffer
noremap <leader>c :bd<CR>

"" Clean search (highlight)
nnoremap <silent> <leader><space> :noh<cr>
"" Vmap for maintain Visual Mode after shifting > and <
vmap < <gv
vmap > >gv

"" Move visual block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv


" Disable visualbell
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif

" Copy/Paste/Cut
" if has('unnamedplus')
  " set clipboard=unnamed,unnamedplus
" endif

nmap ev :tabedit $MYVIMRC<CR>

if has('macunix')
  " pbcopy for OSX copy/paste
  vmap <C-x> :!pbcopy<CR>
  vmap <C-c> :w !pbcopy<CR><CR>
endif

" Split window
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w

" python excue
" nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>
nnoremap <F9> :w<CR>:exec '!python' shellescape(@%, 1)<cr>
nnoremap <F5> :w<CR>:exec '!dotnet run' shellescape(@%, 1)<cr>
"ZZ to :w, ZX to :wq
noremap zz :w<CR>
noremap zx :wq<CR>
noremap XXX :q!<CR>
nnoremap <space>t :!open -a /Applications/iTerm.app .<cr>


" //****************************************************************************//
" //                               Plugin settings                              //
" //****************************************************************************//

"" Git
noremap <Leader>ga :Gwrite<CR>
noremap <Leader>gc :Gcommit<CR>
noremap <Leader>gsh :Gpush<CR>
noremap <Leader>glhl :Gpull<CR>
noremap <Leader>gs :Gstatus<CR>
noremap <Leader>gb :Gblame<CR>
noremap <Leader>gd :Gvdiff<CR>
noremap <Leader>gr :Gremove<CR>
" session management
nnoremap <leader>so :OpenSession<Space>
nnoremap <leader>ss :SaveSession<Space>
nnoremap <leader>sd :DeleteSession<CR>
nnoremap <leader>sc :CloseSession<CR>
"" Set working directory

"Recovery commands from history through FZF
nmap <leader>y :History:<CR>
"" Open current line on GitHub
nnoremap <Leader>o :.Gbrowse<CR>
nnoremap <silent> <leader>b :Buffers<CR>
nnoremap <silent> <leader>e :GFiles<CR>
" nnoremap <silent> <C-e> :GFiles<CR>
" Allows you to save files you opened without write permissions via sudo
cmap w!! w !sudo tee %

" === vim-jsdoc shortcuts ==="
" Generate jsdoc for function under cursor
nmap <leader>z :JsDoc<CR>

" let g:vcoolor_map = '<C-c>'
let g:user_emmet_expandabbr_key='<C-z>'

" easymotion
" map <Leader> <Plug>(easymotion-prefix)
" nmap s <Plug>(easymotion-overwin-f2)
" " Move to line
" map <Leader>L <Plug>(easymotion-bd-jk)
" nmap <Leader>L <Plug>(easymotion-overwin-line)
" " Move to word
" map  <Leader>w <Plug>(easymotion-bd-w)
" nmap <Leader>w <Plug>(easymotion-overwin-w)
" map  N <Plug>(easymotion-prev)
" map  / <Plug>(easymotion-sn)
" omap / <Plug>(easymotion-tn)
" map  n <Plug>(easymotion-next)
" transprent bg
"hi Normal guibg=NONE ctermbg=NONE

nmap <space>e :CocCommand explorer<CR>

" frame command
nmap <space>f :CommentFrameHashDash ""<Left>
let g:multi_cursor_select_all_word_key = '<space>n'

map <leader>s :sort<CR>
map <leader>su :%sort u<CR>
map <leader>sr :%sort!<CR>

nnoremap <silent> <space>y  :<C-u>CocList -A --normal yank<cr>

" inoremap " ""<left>
" inoremap ' ''<left>
" inoremap ( ()<left>
" inoremap [ []<left>
" inoremap { {}<left>
" inoremap {<CR> {<CR>}<ESC>O
" inoremap {;<CR> {<CR>};<ESC>O

" make J, K, L, and H move the cursor MORE.

