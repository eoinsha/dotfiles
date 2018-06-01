set nocompatible
filetype off    " Required

set runtimepath^=~/.vim/bundle/ctrlp.vim
set rtp+=~/.vim/bundle/vundle/
set rtp+=/usr/local/lib/python2.7/site-packages/powerline/bindings/vim/

call vundle#rc()

python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

Bundle 'gmarik/vundle'
Bundle 'altercation/vim-colors-solarized'
Bundle 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Plugin 'isRuslan/vim-es6'
Plugin 'christoomey/vim-tmux-navigator'
Bundle 'will133/vim-dirdiff'
Bundle 'gorodinskiy/vim-coloresque.git'
Plugin 'elzr/vim-json'
Plugin 'jimmyhchan/dustjs.vim'
Plugin 'cakebaker/scss-syntax.vim'
Bundle 'elixir-lang/vim-elixir.git'
Plugin 'rizzatti/dash.vim'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'valloric/MatchTagAlways'
Bundle 'tpope/vim-fugitive'
Plugin 'Chiel92/vim-autoformat'
Plugin 'wikimatze/hammer.vim'
Plugin 'hashivim/vim-terraform'
Plugin 'tpope/vim-unimpaired.git'

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|.git'

" Some settings to enable the theme:
set number
syntax enable
set background=dark
colorscheme solarized

filetype plugin indent on

set expandtab
set tabstop=2
set shiftwidth=2
set hlsearch
set ignorecase
set smartcase

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set laststatus=2 " Always show powerline even with one buffer:

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_ignore_files=['/node_modules/', '\m\c.html$']
" let g:syntastic_javascript_checkers=['eslint']
let g:syntastic_javascript_checkers=['standard']
let g:syntastic_javascript_standard_exec = 'spacey-standard'
" Pretend Java checker is loaded to prevent it from loading!
let g:loaded_syntastic_java_javac_checker = 1

" Highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Buffer Explorer
nnoremap <silent> <F12> :bn<CR>
nnoremap <Leader>b :BufExplorer<CR>

" NERDTree
map <C-n> :NERDTreeToggle<CR>

set wildignore+=node_modules/**,**/node_modules/**

