set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-dispatch'

Plugin 'tpope/vim-rails'

Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'scrooloose/syntastic'

Plugin 'karlbright/qfdo.vim'

Plugin 'ngmy/vim-rubocop'

Plugin 'thoughtbot/vim-rspec'

Plugin 'szw/vim-maximizer'

Plugin 'tpope/vim-surround'

Plugin 'tpope/vim-endwise'

Plugin 'tpope/vim-fugitive'

Plugin 'whatyouhide/vim-gotham'

Plugin 'scrooloose/nerdtree'

Plugin 'alvan/vim-closetag'

Plugin 'ervandew/supertab'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
set autowrite

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_ruby_checkers = ['rubocop']

map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

let g:rspec_command = "Dispatch rspec {spec}"

map <F2> :Copen

map , :ccl

set nu

colorscheme gotham256

autocmd vimenter * NERDTree

" filenames like *.xml, *.html, *.xhtml, ...
let g:closetag_filenames = "*.html,*.xhtml,*.phtml"

set tabstop=2 shiftwidth=2 expandtab
