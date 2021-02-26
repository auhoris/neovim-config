"let g:currentmode={
       "\ 'n'  : 'NORMAL ',
       "\ 'v'  : 'VISUAL ',
       "\ 'V'  : 'V·Line ',
       "\ '' : 'V·Block ',
       "\ 'i'  : 'INSERT ',
       "\ 'R'  : 'R ',
       "\ 'Rv' : 'V·Replace ',
       "\ 'c'  : 'Command ',
       "\}

"set statusline+=\ %{toupper(g:currentmode[mode()])}
"set statusline+=%#PmenuSel#
""set statusline+=%{StatuslineGit()}
"set statusline+=%#LineNr#
"set statusline+=\ %f
"set statusline+=%m\
"set statusline+=%=
"set statusline+=%#CursorColumn#
"set statusline+=\ %y
"set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
"set statusline+=\[%{&fileformat}\]
"set statusline+=\ %p%%
"set statusline+=\ %l:%c
"set statusline+=\
"set statusline+=%#warningmsg#
"set statusline+=%{&modified?'[+]':''}
"set statusline+=%#Warnings#
"set statusline+=%{&bomb?'[BOM]':''}
