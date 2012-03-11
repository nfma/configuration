set hidden

" Pathogen plug-in
call pathogen#infect() 

let mapleader = ","

set history=1000

runtime macros/matchit.vim
set wildmenu
set wildmode=list:longest

set ignorecase 
set smartcase

set title

"set more context around the cursor"
set scrolloff=3

set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

set number

" Intuitive backspacing in insert mode
set backspace=indent,eol,start
 
" File-type highlighting and configuration.
" Run :filetype (without args) to see what you may have
" to turn on yourself, or just set them all to be sure.
syntax on
filetype on
filetype plugin on
filetype indent on
 
" Highlight search terms...
set hlsearch
set incsearch " ...dynamically as they are typed.

"disable search highlight temporarily"
nmap <silent> <leader>n :silent :nohlsearch<CR>

"enable hidden chars to be shown"
set listchars=tab:>-,trail:·,eol:$
nmap <silent> <leader>s :set nolist!<CR>

set shortmess=atI

set visualbell

"current dir matches opened window"
" set autochdir

" activate rainbow parenthesis
let vimclojure#ParenRainbow = 1

"remember what you've done after quitting vim"
set viminfo='20,<50,s10,h,%

" use console dialogs instead of popup
" dialogs for simple choices
set guioptions+=c

" Remove menu bar
set guioptions-=m

" Remove toolbar
set guioptions-=T

" tab configuration
" set tabstop=4
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
set encoding=utf-8
set scrolloff=3

set autoindent
set showmode
set showcmd
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set statusline=[%02n]\ %f\ %(\[%M%R%H]%)%{fugitive#statusline()}%=\ %4l,%02c%2V\ %P%*

"set relativenumber
"set undofile

"ack grep
let g:ackprg="ack-grep -H --nocolor --nogroup --column"

set wrap
set textwidth=149
set formatoptions=qrn1
"set colorcolumn=160

" get rid of the help F1 key
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

"close map window"
let g:CommandTCancelMap='<Esc>'

"ignore certain files/dirs"
:set wildignore+=*.o,*.obj,.git,*.jar,*.class,*.swp,*swo

" tags options
let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_WinWidth = 50
map <F4> :TlistToggle<cr>
map <F8> :!ctags -R --langmap=Lisp:+.clj --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

" NERDTree 
map <F3> :NERDTree<cr>

" vim slime
let g:slime_target = "screen"

" load colors 
colo jellybeans
