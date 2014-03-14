" ZhengLingyun's vimrc

" Common configuration
filetype plugin indent on

autocmd FileType python setlocal et sta sw=4 sts=4
autocmd FileType python setlocal foldmethod=indent
set foldlevel=99

set hls
set tags=./tags,../tags,../*/tags
cs add cscope.out
"set tags=tags
"set textwidth=79
"set cc=+1
"set ts=4
"set sw=4
"set expandtab
"set autoindent

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
