"*****************************************************************************
"" Mappings
"*****************************************************************************

" if exists('g:vscode')

  " " Simulate same TAB behavior in VSCode
  " nmap <Tab> :Tabnext<CR>
  " nmap <S-Tab> :Tabprev<CR>
" else

inoremap jk <Esc>
" Yank from current cursor position to the end of the line (make it
" consistent with the behavior of D, C)
nnoremap Y y$

" Move the cursor based on physical lines, not the actual lines.
nnoremap <expr> j (v:count == 0 ? 'gj' : 'j')
nnoremap <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap ^ g^
nnoremap 0 g0
" Do not include white space characters when using $ in visual mode,
" see https://vi.stackexchange.com/q/12607/15292
xnoremap $ g_

" Jump to matching pairs easily in normal mode
nnoremap <Tab> %
" Go to start or end of line easier
nnoremap H ^
xnoremap H ^
nnoremap L g_
xnoremap L g_
" Edit and reload init.vim quickly
nnoremap <silent> <leader>sv :<C-U>silent update $MYVIMRC <bar> source $MYVIMRC <bar>
      \ echomsg "Nvim config successfully reloaded!"<cr>
" Find and replace (like Sublime Text 3)
nnoremap <C-H> :%s/
xnoremap <C-H> :s/
" Search in selected region
xnoremap / :<C-U>call feedkeys('/\%>'.(line("'<")-1).'l\%<'.(line("'>")+1)."l")<CR>
" Change text without putting it into the vim register,
" see https://stackoverflow.com/q/54255/6064933
nnoremap c "_c
nnoremap C "_C
nnoremap cc "_cc
xnoremap c "_c

" Text objects for URL
xnoremap <silent> iu :<C-U>call text_obj#URL()<CR>
onoremap <silent> iu :<C-U>call text_obj#URL()<CR>

" Text objects for entire buffer
xnoremap <silent> iB 0ggoG
onoremap <silent> iB :normal viB<CR>

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
" nnoremap <silent> gB :<C-U>call buf_utils#GoToBuffer(v:count, 'forward')<CR>
nnoremap <silent> gB :<C-U>call buf_utils#GoToBuffer(v:count, 'backward')<CR>

" noremap <Leader>ee :e <C-R>=expand("%:p:h") . "/" <CR>

"" Tabs
nnoremap <Tab> gt
nnoremap <S-Tab> gT
nnoremap <silent> <S-t> :tabnew<CR>

" map dir
nnoremap <leader>. :lcd %:p:h<CR>
"" Opens a tab edit command with the path of the currently edited file filled
" noremap <Leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>
" Delete current visual selection and dump in black hole buffer before pasting
" Used when you want to paste over something without it getting copied to
" Vim's default buffer
" delete without yanking
nnoremap <leader>d "_d
vnoremap <leader>d "_d
nnoremap <leader>x "_x
vnoremap <leader>x "_x
" replace currently selected text with default register
" without yanking it
vnoremap <leader>p "_dP
" replace currently selected text
noremap YY "+y<CR>
noremap <leader>p "+gP<CR>
noremap XX "+x<CR>

" Buffer nav
" noremap <leader>z :bp<CR>
" noremap <leader>q :bp<CR>
" noremap <leader>x :bn<CR>
" noremap <leader>w :bn<CR>

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
" nmap ss :split<Return><C-w>w
" nmap ss :split<Return><C-w>w
nmap sv :vsplit<CR>
nmap sh :sp<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" python excue
" nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>
" nnoremap <F9> :w<CR>:exec '!python' shellescape(@%, 1)<cr>
" nnoremap <F5> :w<CR>:exec '!dotnet run' shellescape(@%, 1)<cr>
"ZZ to :w, ZX to :wq
" noremap zz :w<CR>
" noremap zx :wq<CR>
" noremap XXX :q!<CR>
nnoremap <leader>t :!open -a /Applications/iTerm.app .<cr>


" //****************************************************************************//
" //                               Plugin settings                              //
" //****************************************************************************//

"" Git
noremap <Leader>ga :Gwrite<CR>
noremap <Leader>gcm :Gcommit<CR>
noremap <Leader>gsh :Gpush<CR>
noremap <Leader>gl:Gpull<CR>
noremap <Leader>gs :Gstatus<CR>
noremap <Leader>gb :Gblame<CR>
noremap <Leader>gd :Gvdiff<CR>
noremap <Leader>gr :Gremove<CR>
nmap <leader>gh :diffget //3<CR>
nmap <leader>gu :diffget //2<CR>
nmap <leader>gs :G<CR>
nnoremap <leader>gco :GBranches<CR>


" session management
nnoremap <leader>so :OpenSession<Space>
nnoremap <leader>ss :SaveSession<Space>
nnoremap <leader>sd :DeleteSession<CR>
nnoremap <leader>sc :CloseSession<CR>
"" Set working directory

"Recovery commands from history through FZF
nmap <leader>y :History:<CR>
"" Open current line on GitHub
" nnoremap <Leader>o :.Gbrowse<CR>
nnoremap <silent> <space>b :Buffers<CR>
" nnoremap <silent> <leader>e :GFiles<CR>
nnoremap <silent> <c-p> :GFiles<CR>
" nnoremap <silent> <C-e> :GFiles<CR>
" Allows you to save files you opened without write permissions via sudo
cmap w!! w !sudo tee %

" === vim-jsdoc shortcuts ==="
" Generate jsdoc for function under cursor
" nmap <leader>z :JsDoc<CR>

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
" map <Leader>s <Plug>(easymotion-sn)<C-R>*<CR>
" set clipboard=unnamed
" transprent bg
"hi Normal guibg=NONE ctermbg=NONE


" frame command
nmap <space>uc :CommentFrameHashDash ""<Left>
let g:multi_cursor_select_all_word_key = '<space>n'

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

" function! TwfExit(path)                                                                                                                                       
  " function! TwfExitClosure(job_id, data, event) closure                                                                                                       
    " bd!                                                                                                                                                       
    " try                                                                                                                                                       
      " let out = filereadable(a:path) ? readfile(a:path) : []                                                                                                  
    " finally                                                                                                                                                   
      " silent! call delete(a:path)                                                                                                                             
    " endtry                                                                                                                                                    
    " if !empty(out)                                                                                                                                            
      " execute 'edit! ' . out[0]                                                                                                                               
    " endif                                                                                                                                                     
  " endfunction                                                                                                                                                 
  " return funcref('TwfExitClosure')                                                                                                                            
" endfunction                                                                                                                                                   
                                                                                                                                                              
" function! Twf()                                                                                                                                               
  " let temp = tempname()                                                                                                                                       
  " call termopen('twf ' . @% . ' > ' . temp, { 'on_exit': TwfExit(temp) })                                                                                     
  " startinsert                                                                                                                                                 
" endfunction                                                                                                                                                   
                                                                                                                                                              
" nnoremap <silent> <Space>z :call Twf()<CR>

" global search
nnoremap <leader>pws :CocSearch <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>gwh :h <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>pww :Rg <C-R>=expand("<cword>")<CR><CR>
nnoremap <space>pwr :%s/<C-R>=expand("<cword>")<CR>/ .


" j/k will move virtual lines (lines that wrap)
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')
" endif
