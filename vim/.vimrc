" pathogen is a plugin manager for vim. There are a lot of useful plugins out
" there that can make the editing code in a terminal with vim super powerful!
"execute pathogen#infect('bundle/{}')

set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab
set nowrap              "don't wrap lines
set wildmenu            "better command-line completion
set showcmd             "show partial commands in the last line of the screen
set hlsearch
set laststatus=2        "always show the status bar
set mouse=a             "don't copy numbers when selecting an area with a mouse

set number                  "turn numbers (on the left side) on
set printoptions=number:y   "print with numbers
set history=1000            "keep a long list of history
set noeb vb t_vb=           "get ride of error bells
set autoread                "reload files changed outside of vim
set t_Co=256                "set 256bit color
set clipboard=unnamedplus   "alias for X Windows clipboard

" remap <F1> to escape...stupid fat fingers...
nmap <F1> <nop>
map <F1> <Esc>
imap <F1> <Esc>

syntax on
set encoding=utf-8

" fix backspacing issues
set backspace=indent,eol,start

" <Ctrl-l> redraws the screen and removes any search highlighting
noremap <silent> <C-l> :nohl<CR><C-l>

" remap space to run the macro in reg q
noremap <Space> @q

" remap enter to put in a newline
noremap <CR> o<Esc>k

"maps <F3> to spellcheck
noremap <F3> <C-o>:setlocal spell! spelllang=en_us<CR>

" shows unwanted whitespace characters
set listchars=tab:>-,trail:~,extends:>,precedes:<
set list

" remove trailing whitespace before save
autocmd BufWritePre * :%s/\s\+$//e

" status bar configuration
set statusline+=%F      "show filename
set statusline+=%9*\ %= " Space
set statusline+=%7*\ %{(&fenc!=''?&fenc:&enc)}\[%{&ff}]\ " Encoding & Fileformat
set statusline+=%=%P\ \         "percent through file
set statusline+=%((%l,%c)%)\    "line and column (right aligned)

" Allow saving of files s sudo when I forget to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

"setup the 80 column line
if exists('+colorcolumn')
    set colorcolumn=80
else
    au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%80v.\+', -1)
endif

set scrolloff=5 "start scrolling 5 lines before bottom
set sidescrolloff=15
set sidescroll=1
