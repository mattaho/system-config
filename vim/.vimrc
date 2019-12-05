" I got a lot of these settings from https://dougblack.io/words/a-good-vimrc.html
" which includes useful explanations as well

set nocompatible              " be iMproved, required

set iskeyword-=_

""""""""""""""""""""""""""""""""""""""""""""""
"  COLORS
""""""""""""""""""""""""""""""""""""""""""""""

syntax enable  " enable syntax highlighting
set background=dark
colorscheme solarized

""""""""""""""""""""""""""""""""""""""""""""""
"  SPACES AND TABS
""""""""""""""""""""""""""""""""""""""""""""""

set tabstop=4  " number of visual spaces per TAB character
set softtabstop=2  " number of spaces in tab when editing
set expandtab  " tabs are spaces

""""""""""""""""""""""""""""""""""""""""""""""
"  UI CONFIG
""""""""""""""""""""""""""""""""""""""""""""""

set number   " show line numbers
set showcmd   " show command in bottom bar
set cursorline   " highlight current line
set showmatch  " highlight matching brackets [{()}]

filetype indent on   " load filetype-specific indent files
set wildmenu   " visual autocomplete for command menu

set lazyredraw   " redraw only when we need to

" Change cursor shape between insert and normal mode in iTerm2.app
if $TERM_PROGRAM =~ "iTerm"
  let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
  let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif

""""""""""""""""""""""""""""""""""""""""""""""
"  SEARCHING
""""""""""""""""""""""""""""""""""""""""""""""

set incsearch  " search as characters are entered
set hlsearch  " highlight search matches

" turn off search highlight with comma space
nnoremap <leader><space> :nohlsearch<CR>

""""""""""""""""""""""""""""""""""""""""""""""
"  FOLDING
"  I don't think I find value in this so I
"  didn't enable any of these
""""""""""""""""""""""""""""""""""""""""""""""

" set foldenable          " enable folding
" set foldlevelstart=10   " open most folds by default
" set foldnestmax=10      " 10 nested fold max

" space open/closes folds
" nnoremap <space> za

" set foldmethod=indent   " fold based on indent level

""""""""""""""""""""""""""""""""""""""""""""""
"  MOVEMENT
""""""""""""""""""""""""""""""""""""""""""""""

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" highlight last inserted text
nnoremap gV `[v`]

""""""""""""""""""""""""""""""""""""""""""""""
"  LEADER SHORTCUTS
""""""""""""""""""""""""""""""""""""""""""""""

let mapleader=","       " leader is comma

" kj is escape
inoremap kj <Esc>

" toggle gundo
nnoremap <leader>u :GundoToggle<CR>

" save session
nnoremap <leader>s :mksession<CR>

" open ag.vim
nnoremap <leader>a :Ag

" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

set autochdir  " Automatically change directory to current dir for file edit commands

