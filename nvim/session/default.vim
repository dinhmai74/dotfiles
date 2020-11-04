let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/workspace/project/BowieMobile
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +31 app/screens/home-screen/HomeViewMap.tsx
badd +2 app/utils/constants.ts
badd +40 app/themes/theme.tsx
badd +26 app/app-zustand/useMenuHomeStore.tsx
badd +76 app/i18n/en.json
badd +113 ~/.config/nvim/init.vim
badd +12 app/utils/get-elevation/get-elevation.tsx
badd +24 app/components/image-with-fetch/ImageWithFetch.tsx
badd +37 app/themes/themeProvider.tsx
badd +124 app/services/reactotron/reactotron.ts
badd +19 app/screens/home-screen/Marker.tsx
badd +199 package.json
badd +48 app/services/apollo/apollo-config.ts
badd +68 app/utils/storage.tsx
badd +1 app/utils/strings/Strings.ts
badd +0 \[coc-explorer]-1
badd +44 app/screens/event-detail-screen/EventDetailScreen.tsx
badd +17 app/screens/event-detail-screen/components/GalleryRow.tsx
argglobal
%argdel
edit app/components/image-with-fetch/ImageWithFetch.tsx
set splitbelow splitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
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
let s:l = 24 - ((16 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
24
normal! 060|
tabnext 1
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 winminheight=1 winminwidth=1 shortmess=filnxtToOFcI
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
