"source $VIMRUNTIME/macros/matchit.vim
syntax enable

filetype plugin on

colorscheme ron

" use indents of 2 spaces, and have them copied down lines:

set shiftwidth=4

set shiftround

set expandtab

set autoindent

"----- you need digraphs for uumlauts

"set digraph

"----- don't don't out in insert mode

set noinsertmode

"----- allow us to backspace before an insert

set backspace=2

"----- tabs are to be set at 4 spaces

set tabstop=4

"----- turn off the mouse in the xterm

set mouse=



" for Perl programming, have things in braces indenting themselves:

autocmd FileType perl set smartindent
autocmd FileType php set smartindent

" make searches case-insensitive, unless they contain upper-case letters:

set ignorecase

set smartcase

" show the `best match so far' as search strings are typed:

set incsearch

"

"----- show the ruler for editing

set ruler

"set statusline=Vim-%{Version()}\ %{getcwd()}\ \ %1*[%02n]%*\ %(%M%R%H%)\ %2*%F%*\ %=%{Options()}\ %3*<%l,%c%V>%*

set statusline=%<%f%h%m%r%=%b\ 0x%B\ \ %l,%c%V\ %P

"set statusline=%<%f%=\ [%1*%M%*%n%R%H]\ %-19(%3l,%02c%03V%)%O'%02b'

hi User1 term=inverse,bold cterm=inverse,bold ctermfg=red

" Text between "%{" and "%}" is being evaluated and thus suited for

" functions.

" Here I will use the function "Options()" as defined below to show the

" values of some (local) options..







" Convert all files to unix format and set default fileformat to unix.

set ffs=unix

"set ff=unix

" Convert file format to unix

" nmap _ux :se ff=unix<CR>

"

map :Q :wq

map :W :w

" "

"----- set up the stuff for color highlighing in an xterm

"if &term =~ "xterm"

 if has("terminfo")

  set t_Co=16

  set t_Sf=[3%p1%dm

"  set t_Sb=.

" was [4%p1%dm

  set t_vb=

 else

  set t_Co=16

  set t_Sf=[3%dm

"  set t_Sb=

" was [4%dm

  set t_vb=

 endif

"endif



"----- show the command in the status line

set showcmd

"----- always have a status line

set laststatus=2

set smarttab

set pastetoggle=<F12>
