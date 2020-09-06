" ~/.config/nvim/session/eng-web.vim:
" Vim session script.
" Created by session.vim 2.13.1 on 03 May 2020 at 00:18:17.
" Open this file in Vim and run :source % to restore your session.

if exists('g:syntax_on') != 1 | syntax on | endif
if exists('g:did_load_filetypes') != 1 | filetype on | endif
if exists('g:did_load_ftplugin') != 1 | filetype plugin on | endif
if exists('g:did_indent_on') != 1 | filetype indent on | endif
if &background != 'dark'
	set background=dark
endif
if !exists('g:colors_name') || g:colors_name != 'gruvbox' | colorscheme gruvbox | endif
call setqflist([{'lnum': 1, 'col': 1, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'module': '', 'filename': '/Users/dinhmai/workplace/project/uit/eng-web/project/src/containers/general-course-screen/GeneralCourse.tsx', 'text': 'import {Screen, Text} from "components"'}, {'lnum': 2, 'col': 1, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'module': '', 'filename': '/Users/dinhmai/workplace/project/uit/eng-web/project/src/containers/general-course-screen/GeneralCourse.tsx', 'text': 'import * as React from "react"'}, {'lnum': 3, 'col': 1, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'module': '', 'filename': '/Users/dinhmai/workplace/project/uit/eng-web/project/src/containers/general-course-screen/GeneralCourse.tsx', 'text': 'import styled from "styled-components"'}, {'lnum': 4, 'col': 1, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'module': '', 'filename': '/Users/dinhmai/workplace/project/uit/eng-web/project/src/containers/general-course-screen/GeneralCourse.tsx', 'text': 'import {images} from "themes"'}, {'lnum': 5, 'col': 1, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'module': '', 'filename': '/Users/dinhmai/workplace/project/uit/eng-web/project/src/containers/general-course-screen/GeneralCourse.tsx', 'text': 'import {CourseItem, GeneralCourseItem} from "./components/CourseItem"'}, {'lnum': 6, 'col': 1, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'module': '', 'filename': '/Users/dinhmai/workplace/project/uit/eng-web/project/src/containers/general-course-screen/GeneralCourse.tsx', 'text': ''}, {'lnum': 7, 'col': 1, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'module': '', 'filename': '/Users/dinhmai/workplace/project/uit/eng-web/project/src/containers/general-course-screen/GeneralCourse.tsx', 'text': 'const Wrapper = styled.div`'}, {'lnum': 8, 'col': 1, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'module': '', 'filename': '/Users/dinhmai/workplace/project/uit/eng-web/project/src/containers/general-course-screen/GeneralCourse.tsx', 'text': '  /* margin-right: auto;'}, {'lnum': 9, 'col': 1, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'module': '', 'filename': '/Users/dinhmai/workplace/project/uit/eng-web/project/src/containers/general-course-screen/GeneralCourse.tsx', 'text': '  margin-left: auto; */'}, {'lnum': 10, 'col': 1, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'module': '', 'filename': '/Users/dinhmai/workplace/project/uit/eng-web/project/src/containers/general-course-screen/GeneralCourse.tsx', 'text': '  /* padding: 40px; */'}, {'lnum': 11, 'col': 1, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'module': '', 'filename': '/Users/dinhmai/workplace/project/uit/eng-web/project/src/containers/general-course-screen/GeneralCourse.tsx', 'text': '  flex: 1;'}, {'lnum': 12, 'col': 1, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'module': '', 'filename': '/Users/dinhmai/workplace/project/uit/eng-web/project/src/containers/general-course-screen/GeneralCourse.tsx', 'text': '  /* background-color: red; */'}, {'lnum': 13, 'col': 1, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'module': '', 'filename': '/Users/dinhmai/workplace/project/uit/eng-web/project/src/containers/general-course-screen/GeneralCourse.tsx', 'text': '`'}])
let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/workplace/project/uit/eng-web/project
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +17 src/containers/course-suggest-detail-screen/CourseSuggestDetailScreen.tsx
badd +25 src/containers/general-course-screen/components/CourseItem.tsx
badd +28 src/App.tsx
badd +21 src/tools/routes.tsx
badd +10 src/tools/strings.ts
badd +336 src/localization/languages/en.json
badd +15 src/containers/general-course-screen/GeneralCourse.tsx
badd +27 src/containers/course-suggest-detail-screen/components/SugestionCourseDetailItem.tsx
badd +0 src/themes/images.ts
badd +147 src/themes/images/images.ts
badd +21 tailwind.config.js
badd +17 src/components/text/Text.tsx
badd +4 src/tools/string-helper.ts
badd +24 src/containers/course-detail-screen/CourseDetailScreen.tsx
argglobal
%argdel
edit src/containers/course-detail-screen/CourseDetailScreen.tsx
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 61 + 95) / 191)
exe 'vert 2resize ' . ((&columns * 129 + 95) / 191)
exe '3resize ' . ((&lines * 2 + 23) / 47)
exe 'vert 3resize ' . ((&columns * 80 + 95) / 191)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 45 - ((24 * winheight(0) + 22) / 45)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
45
normal! 09|
lcd ~/workplace/project/uit/eng-web
wincmd w
argglobal
if bufexists("~/workplace/project/uit/eng-web/project/src/containers/course-suggest-detail-screen/CourseSuggestDetailScreen.tsx") | buffer ~/workplace/project/uit/eng-web/project/src/containers/course-suggest-detail-screen/CourseSuggestDetailScreen.tsx | else | edit ~/workplace/project/uit/eng-web/project/src/containers/course-suggest-detail-screen/CourseSuggestDetailScreen.tsx | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
silent! normal! zE
let s:l = 17 - ((0 * winheight(0) + 22) / 45)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
17
normal! 07|
lcd ~/workplace/project/uit/eng-web
wincmd w
argglobal
enew
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
lcd ~/workplace/project/uit/eng-web
wincmd w
exe 'vert 1resize ' . ((&columns * 61 + 95) / 191)
exe 'vert 2resize ' . ((&columns * 129 + 95) / 191)
exe '3resize ' . ((&lines * 2 + 23) / 47)
exe 'vert 3resize ' . ((&columns * 80 + 95) / 191)
if exists(':tcd') == 2 | tcd ~/workplace/project/uit/eng-web/project/src/containers/course-suggest-detail-screen/components | endif
tabnext 1
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
"   silent exe 'bwipe ' . s:wipebuf
endif
" unlet! s:wipebuf
set winheight=1 winwidth=20 winminheight=1 winminwidth=1 shortmess=filnxtToOFc
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save

" Support for special windows like quick-fix and plug-in windows.
" Everything down here is generated by vim-session (not supported
" by :mksession out of the box).

1wincmd w
tabnext 1
if exists('s:wipebuf')
  if empty(bufname(s:wipebuf))
if !getbufvar(s:wipebuf, '&modified')
  let s:wipebuflines = getbufline(s:wipebuf, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:wipebuf
  endif
endif
  endif
endif
doautoall SessionLoadPost
unlet SessionLoad
" vim: ft=vim ro nowrap smc=128
