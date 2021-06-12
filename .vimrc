"              ██
"             ░░
"    ██    ██  ██  ██████████   ██████   █████
"   ░██   ░██ ░██ ░░██░░██░░██ ░░██░░█  ██░░░██
"   ░░██ ░██  ░██  ░██ ░██ ░██  ░██ ░  ░██  ░░ 
" ██ ░░████   ░██  ░██ ░██ ░██  ░██    ░██   ██
"░██  ░░██    ░██  ███ ░██ ░██ ░███    ░░█████
"░░    ░░     ░░  ░░░  ░░  ░░  ░░░      ░░░░░


"------------------------------------------------------------

" These options and commands enable some very useful features in Vim, that
" no user should have to live without.

" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible
set shell=bash

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype off
filetype plugin on
syntax on

"------------------------------------------------------------
" Must have options {{{1

" Better command-line completion
set wildmenu

" Show partial commands in the last line of the screen
set showcmd

" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch

" Set scrolloff which displays extra lines beyond the line the cursor is 
" on.
set scrolloff=3

"------------------------------------------------------------
" Usability options {{{1
"
" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Allow local vimrc
set exrc
set secure

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Always display the status line, even if only one window is displayed
set laststatus=2

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Use visual bell instead of beeping when doing something wrong
" set visualbell

" And reset the terminal code for the visual bell. If visualbell is set, and
" this line is also included, vim will neither flash nor beep. If visualbell
" is unset, this does nothing.
"set t_vb=

" Enable use of the mouse for all modes
set mouse=""

" Set the command window height to 2 lines, to avoid many cases of having to
" 'press <Enter> to continue'
set cmdheight=2

" Don't add new line at end of file
set binary
set noeol
set wildignore+=*.so,*.swp

" Save undo history
set undofile
set undodir=/home/srang/.vim/history

" Set TILDE as an operator
set tildeop

"------------------------------------------------------------
"Highlights/filetypes

autocmd BufNewFile,BufRead Dockerfile.* set syntax=dockerfile

"------------------------------------------------------------
"Colors

colorscheme rangler


"------------------------------------------------------------
" Visual Formatting options {{{1
"
" Indentation settings according to personal preference.

" Indentation settings for using 2 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=2
set softtabstop=2
set expandtab
if has('nvim')
  set noincsearch
endif


set number
function! NumberToggle()
  if(&relativenumber == 1)
    set number
    set norelativenumber
  else
    set relativenumber
    set nonumber
  endif
endfunc


" Indentation settings for using hard tabs for indent. Display tabs as
" two characters wide.
" set shiftwidth=2
" set tabstop=2

"------------------------------------------------------------
" Listchars useful for finding unwanted whitespace
set list listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<,space:·
" let java_space_errors=1

"------------------------------------------------------------
" Plugin Options {{{1
"Spell check English
au FileType tex,markdown,mkd,md,asciidoc,text setlocal spell spelllang=en_us

" ------- NERDTree
" Fix ^G display
let g:NERDTreeNodeDelimiter = "\u00a0"

" Show hidden files
" let NERDTreeShowHidden=1

" Don't leave Nerdtree as last window
let NERDTreeQuitOnOpen = 1

" Set default width
let g:NERDTreeWinSize = 45


" ------- Lexical
augroup lexical
  autocmd!
  autocmd FileType markdown,mkd,md call lexical#init()
  autocmd FileType asciidoc call lexical#init()
  autocmd FileType text,txt call lexical#init()
  autocmd FileType tex call lexical#init()
augroup END

nnoremap <leader>sp :let g:lexical#spell = !g:lexical#spell<CR>

" let g:lexical#spell_key = '<leader>ss'

" ------- Emmet
let g:user_emmet_leader_key='!'

" ------- Polyglot
" let g:polyglot_disabled = ['markdown']
" packadd polyglot

" ------- NERDCommenter
" Create default mappings
let g:NERDCreateDefaultMappings = 1
"
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
"
" " Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1


" ------- Airline
" Automatically displays all buffers when there's only one tab open
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#tab_nr_type= 2

" ------- Latex (old)
"let g:tex_flavor='latex'
"
""Compile to pdf
" let g:Tex_DefaultTargetFormat='pdf'
" let g:Tex_MultipleCompileFormats='dvi,pdf'
"------------------------------------------------------------
" Mappings {{{1

let mapleader = "-"

" This contains my 'essential' keybindings
source ~/.essential_vimrc

" VIMRC macros
nnoremap <leader>ev :tabe $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" ??
" autocmd FileType vim nnoremap <leader>ip :source $MYVIMRC

" TMUX macros
nnoremap <leader>et :tabe $MYTMUXRC<cr>

" BASH macros
nnoremap <leader>eb :tabe $MYBASHRC<cr>

" Quick window nav
" Window vertical split
nnoremap <leader>wv <c-w>v
" Window horizontal split
nnoremap <leader>ws <c-w>s
" Change window
nnoremap <leader>ww <c-w>w
nnoremap <leader>wz <c-w>z
" Toggle rotation
nnoremap <leader>wh <c-w>t<c-w>H
nnoremap <leader>wk <c-w>t<c-w>K
" Swap splits
nnoremap <leader>wr <c-w>r
nnoremap gw <c-w>w

" Scrolling
nnoremap <C-J> <C-E>
nnoremap <C-K> <C-Y>

" copy paste (doesn't work)
" vnoremap <leader>c "+y
" nnoremap <leader>v "+p
" nnoremap <leader><s-v> "+P
" vnoremap <leader>v "+p
" vnoremap <leader><s-v> "+P

" Map <C-L> (redraw screen) to also turn off search highlighting until the next search
nnoremap <C-L> :nohl<CR><C-L>

" Swap between absolute and relative line numbers
nnoremap <leader>sn :call NumberToggle()<cr>

" NERDTree toggles
nnoremap <leader>d :let NERDTreeQuitOnOpen = 1 <bar> NERDTreeToggle<CR>
nnoremap <leader><S-D> :let NERDTreeQuitOnOpen = 0 <bar> NERDTreeToggle<CR>
" nnoremap <leader>f :let NERDTreeQuitOnOpen = 1 <bar> NERDTreeFind<CR>
" nnoremap <leader><S-F> :let NERDTreeQuitOnOpen = 0 <bar> NERDTreeFind<CR>

" Turn vim into hexeditor
nnoremap <leader>hh :%!xxd

" Format text paragraph
nnoremap <leader>q gqip

" Format imported text file, adds a line below paragraph, then splits out
" lines and goes to next paragraph
nnoremap <leader>ff o<esc>kgqip}j