" " Plugin Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" " :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to

" Main Configuration
let mapleader="\<Space>"
syntax on
set shell=bash
set number
set hlsearch
set guifont=Menlo\ for\ Powerline
filetype off                  " required
filetype plugin indent on
autocmd VimEnter * NERDTree

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
call vundle#end()            

" MY PLUGINS!!
Plugin 'fatih/vim-go'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'mileszs/ack.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Lokaltog/powerline'

" Snippet configuration.
let g:UltiSnipsExpandTrigger="<s-enter>"
let g:UltiSnipsJumpForwardtrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

" Go Bindings
set rtp+=$GOPATH/src/github.com/golang/lint/misc/vim
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"
let g:go_fmt_fail_silently = 1
let g:go_play_open_browser = 0

au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>e <Plug>(go-rename)

" Color Theme
syntax enable
colorscheme solarized
let g:solarized_termcolors = &t_Co
let g:solarized_termtrans = 1
let g:solarized_termcolors=256
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
set background=dark

" Font Theme
set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8

if has("gui_running")
 let s:uname = system("uname")
 if s:uname == "Darwin\n"
  set guifont=Inconsolata\ for\ Powerline:h15
 endif
endif

" Download font from https://github.com/powerline/fonts/

" Find
let g:ctrlp_map = '<c-p>' 
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_user_command = 'find %s -type f'        
let g:ctrlp_custom_ignore = 'bin$\|build$\|node_modules$\|.git|.bak|.swp|.pyc|.class'

"No arrow keys
nnoremap   <up>   <nop>
nnoremap  <down>  <nop>
nnoremap  <left>  <nop>
nnoremap  <right> <nop>
inoremap   <up>   <nop>
inoremap  <down>  <nop>
inoremap  <left>  <nop>
inoremap  <right> <nop>

" find and replace
function! VisualFindAndReplace()
    :OverCommandLine%s/
endfunction
function! VisualFindAndReplaceWithSelection() range
        :'<,'>OverCommandLine s/
endfunction

nnoremap <Leader>fr :call VisualFindAndReplace()<CR>
xnoremap <Leader>fr :call VisualFindAndReplaceWithSelection()<CR>

"Spell check
nnoremap <leader>sc :set spell spelllang=en_us<CR>
nnoremap <leader>so :set nospell<CR>

"Clipboard
nnoremap <leader>y :<C-u>exec 'normal ' . v:count1 . '"+yy'<CR>
vnoremap <leader>y "+y
nnoremap <leader>p :<C-u>exec 'normal ' . v:count1 . '"+p'<CR>
vnoremap <leader>p "+p
nnoremap <leader>d :<C-u>exec 'normal ' . v:count1 . '"+dd'<CR>
vnoremap <leader>d "+d 

"Productivity
inoremap jj <ESC>
noremap <leader>s :w<CR>
nnoremap <leader>w :wq<CR>
nnoremap <leader>fq :q!<CR>
nnoremap <leader>u <C-r>
nnoremap <leader>o :noh<CR>
nnoremap <leader>v :e $MYVIMRC<CR>
nnoremap <leader>x :E<CR>
nnoremap <C-b> :b#<CR>

"Moving lines
nnoremap <C-j> :m .+1<CR>
nnoremap <C-k> :m .-2<CR>

"Bottom bar settings
set noruler
set laststatus=2
set statusline=%<\ %f\ %m%y%=%-35.(Line:\ %l\ of\ %L,\ Col:\ %c%V\ (%P)%)
