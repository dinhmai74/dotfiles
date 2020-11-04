
" #------------------------------------------------------------------------------#
" #                                  Float input                                 #
" #------------------------------------------------------------------------------#
autocmd ColorScheme *
      \ hi CocHelperNormalFloatBorder guifg=#dddddd guibg=#575B54
      \ | hi CocHelperNormalFloat guibg=#575B54
" Remap for rename current word
nmap <F2> <Plug>(coc-floatinput-rename)


if has('nvim')
  function! s:is_float(winnr) abort
    let winid = win_getid(a:winnr)
    return !empty(nvim_win_get_config(winid)['relative'])
  endfunction

  function s:quit()
    let nr = winnr('$')
    while nr > 0
      if !s:is_float(nr)
        if nr == 1
          call coc#util#close_floats()
          break
        endif
      endif
      let nr -= 1
    endwhile
    :quit
  endfunction

  nmap <silent> <c-w>q :call <SID>quit()<CR>
  nmap <silent> ZZ :call <SID>quit()<CR>
endif



