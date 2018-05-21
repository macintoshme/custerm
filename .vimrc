colorscheme desert
" Set compatibility to VIM only
set nocompatible
" Syntax Highlighting
syntax on
" Automatically wrap text
set wrap
" Display 5 lines above/below the cursor when scrolling with a mouse.
set scrolloff=5
" Relative Line Numbers showing current line
set number relativenumber

" In insert mode jump back to absolute line numbers
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

" Highlight matching search patterns
set hlsearch
" Enable incremental search
set incsearch
" Include matching uppercase words with lowercase search term
set ignorecase
" Include only uppercase words with uppercase search term
set smartcase
" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

set autoindent

"show matching parenthesis
set showmatch

"Paste mode for large text
set pastetoggle=<F2>

