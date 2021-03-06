" My vimrc - Darren Wurf
" Many tips taken from http://nvie.com/posts/how-i-boosted-my-vim/
" Notes on tabs: http://www.vex.net/~x/python_and_vim.html

" Use all vim features
set nocompatible

" sensible.vim plugin - set senswible defaults
" Load this now so the settings below override the defaults as needed
runtime! plugin/sensible.vim

" Very important! :)
colorscheme elflord

" Leader is set to \ (the default)
" The leader key is used for additional keybinds, since almost every
" key is bound already.
" People like to bind this to , but I use , all the time (jump to
" previous occurrence when using [fFtT]) 
let mapleader="\\"

" Quickly edit/reload the vimrc file
" \ev will open for editing, \sv will reload
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" Tab settings: 
" sw: shifting or auto-indenting lines uses a 4-space "tab"
" ts: If tabs exist they appear as 4 spaces wide
" et: insert spaces instead of tabs (tabstop spaces wide)
" ai: automatic indenting for programming languages, etc
set shiftwidth=4
set tabstop=4
set expandtab
set autoindent

" Make backspaces more powerful. See help backspace' (complete with
" quote mark)
set backspace=indent,eol,start


" Pressing <esc> now changes mode *and* clears highlights
" PROBLEMS: this causes issues in gVim on Windows
nnoremap <esc> :noh<return><esc>

" Thinking about adding this, currently testing
" Wraps text at 72 characters
"set textwidth=72
" In practice, when working with other people 72 is just too low
set textwidth=120

" Always show status line
set laststatus=2
" Personalised status line
set statusline=%F%m%r%h%w\ [%Y,%{&ff}]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
" Show the cursor position all the time
set ruler
" Display incomplete commands
set showcmd
" Display current mode
set showmode
" Always show status bar
set ls=2

" Always use syntax highlighting
syntax on

" Numbered lines
set number

" Searches are case insensitive, but only if the search term is all lowercase
set ignorecase
set smartcase
" Highlight search results
set hlsearch
" Incremental search (search-as-you-type)
set incsearch
" Search/replace "globally" (all matches on the line) by default
set gdefault

" Show matching parentheses
set showmatch

" Load pathogen (if installed). Errors are hidden if pathogen is not installed.
" Pathogen is for easy plugin management
silent! call pathogen#infect() 
filetype plugin indent on

" Pydiction config - python autocomplete
let g:pydiction_location = pathogen#runtime_findfile("complete-dict", 1)

" Binds to show/hide NERDTree and Gundo
nnoremap <F2> :GundoHide \| NERDTreeToggle<CR>
nnoremap <F3> :NERDTreeClose \| GundoToggle<CR>

" End NERDTree config

" The following can also go in .gvimrc:
" Make the default gui window larger
if has("gui_running")
    set lines=30 columns=120
endif

