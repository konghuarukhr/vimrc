" ZhengLingyun's vimrc

" Common configuration
filetype plugin indent on

autocmd FileType python setlocal et sta sw=4 sts=4
autocmd FileType python setlocal foldmethod=indent
autocmd FileType c setlocal sw=4 ts=4 et
set foldlevel=99

set hls
set nu

set tags=./tags,../tags,../*/tags
" Look for tags file up folder
set tags=tags;
set tags+=~/python.lib.ctags
set textwidth=79
set cc=+1
"set ts=4
"set sw=4
"set expandtab
"set autoindent

"if filereadable("cscope.out")
    cs add cscope.out
"elseif filereadable("../cscope.out")
"    cs add ../cscope.out
"elseif filereadable("../../cscope.out")
"    cs add ../../cscope.out
"endif

nnoremap <C-L> :TlistSync<CR><C-L>
let Tlist_Exit_OnlyWindow = 1
let Tlist_Auto_Open = 1
let Tlist_Show_One_File = 1
let Tlist_WinWidth = 44
nnoremap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>f :Ack -w <C-R>=expand("<cword>")<CR><CR>

python << EOF
import os
import sys
import vim
for p in sys.path:
	if os.path.isdir(p):
		vim.command(r"set path+=%s" % (p.replace(" ", r"\ ")))
EOF

if &diff
	let Tlist_Auto_Open = 0
	syntax off
endif

function! CommentBegin()
	r ~/.vim/comments/comment_begin.txt
endfunction
nmap <C-\>b :call CommentBegin()<CR>

function! CommentEnd()
	r ~/.vim/comments/comment_end.txt
endfunction
nmap <C-\>n :call CommentEnd()<CR>
