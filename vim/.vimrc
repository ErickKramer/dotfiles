" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" Shorthand notation fetches from;
" https://github.com/davidhalter/jedi-vim
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer' }
Plug 'vim-syntastic/syntastic'
Plug 'SirVer/ultisnips'
" Plug 'taketwo/vim-ros'
Plug 'editorconfig/editorconfig-vim'
" Initialize plugin system
call plug#end()

" Run current python3 script with F9
nnoremap <buffer> <F9> :exec '!ipython -i' shellescape(@%, 1)<cr>

" Set spell check"
" set spell spelllang=en_us

" Better copy & paste
" When you want to paste large blocks of code into vim, press F2 before
" paste. At the bottom you should see ``-- INSERT (paste) --``.
set pastetoggle=<F2>
set clipboard=unnamed

" Copy in the clipboard
vnoremap <C-c> "+y
noremap <C-v> "+p

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Comment lines or blocks
vnoremap <silent> # :s/^/#/<cr>:noh<cr>
vnoremap <silent> @ :s/^#//<cr>:noh<cr>

" Enable syntax highlighting
" syntax enable

" Show line numbers
set number

" Set tabs width to 4, it is still \t
set tabstop=4

" Expand tabs into spaces
set expandtab

" Indent when moving to the next line while writing code
set autoindent

" Show the matching part of the pair for [] {} and ()
set showmatch

" Enable all Python syntax highlighting features
let python_highlight_all = 1

" Mouse click
set mouse=r

" Show a visual line under the cursor's current line
" set cursorline

" Easier indentation of code blocks
" In visual mode (v), select several lines of code press ``>`` several times.
vnoremap < <gv
vnoremap > >gv

" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

" Disable backup and swap files
set nobackup
set nowritebackup
set noswapfile

" Get rid of default vim mode
set noshowmode

" Eliminate delay between INSERT and ESCAPE
set timeoutlen=1000 ttimeoutlen=0

" Syntastic configuration
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['pyflakes']

" Window
nmap <leader>s<left>  :topleft  vnew<CR>
nmap <leader>s<right> :botright vnew<CR>
nmap <leader>s<up>    :topleft  new<CR>
nmap <leader>s<down>  :botright new<CR>

" Move between spltis
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

" colorscheme orbital
