set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set hlsearch
set ruler
" set paste

" line bar
set cc=80
" Auto word wrap
" set tw=79
" set formatoptions+=t

set encoding=utf-8

let mapleader=","

execute pathogen#infect()
filetype plugin indent on

syntax on

" TagList
" TlistToggle on

" highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" turn on the plugins
filetype plugin on

" turn on the indentation plugins
filetype indent on

let Tlist_Show_One_File=1 
let Tlist_Exit_OnlyWindow=1  
set cscopequickfix=s-,c-,d-,i-,t-,e-
set nu

" cscope setting
"if has(" cscope ") && filereadable(" /usr/bin/cscope")  
" set  csprg=/usr/bin/cscope  
" set  csto=0  
" set  cst  
" set  nocsverb  
" "  add any database  in  current directory  
" if filereadable(" cscope. out ")  
" cs add cscope.out   
" "   else  add database pointed to by environment  
" elseif $CSCOPE_DB != " "  
" cs add $CSCOPE_DB  
" endif  
" set  csverb  
"endif
nmap <C-@>s :cs find s <C-R>=expand("<cword>" )<CR><CR>  
nmap <C-@>g :cs find g <C-R>=expand("<cword>" )<CR><CR>  
nmap <C-@>c :cs find c <C-R>=expand("<cword>" )<CR><CR>  
nmap <C-@>t :cs find t <C-R>=expand("<cword>" )<CR><CR>  
nmap <C-@>e :cs find e <C-R>=expand("<cword>" )<CR><CR>  
nmap <C-@>f :cs find f <C-R>=expand("<cfile>" )<CR><CR>  
nmap <C-@>i :cs find i ^<C-R>=expand("<cfile>" )<CR>$<CR>  
nmap <C-@>d :cs find d <C-R>=expand("<cword>" )<CR><CR>

" scons intergration
:set errorformat=sconsRelativePathsConfuseVim
:set makeprg=/build/apps/bin/iscons\ %

inoremap jj <esc>

syntax enable
set background=dark
colorscheme solarized
