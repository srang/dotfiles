" URL: http://vim.wikia.com/wiki/Example_vimrc
" Authors: http://vim.wikia.com/wiki/Vim_on_Freenode
" Description: A minimal, but feature rich, example .vimrc. If you are a
"              newbie, basing your first .vimrc on this file is a good choice.
"              If you're a more advanced user, building your own .vimrc based
"              on this file is still a good idea.

"------------------------------------------------------------
" Features {{{1
"
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


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/.vim/plugin')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Adds git commands to vim
" Plugin 'tpope/vim-fugitive'

" Adds tab number to terminal vim
"Plugin 'mkitt/tabline.vim'

" Eclim mirror through github (eclim 2.3.4)
" Plugin 'corvec/eclim-for-vundle'
Plugin 'srang/eclim-vim'

" Multicursor
Plugin 'terryma/vim-multiple-cursors'

" Nerd tree file system explorer and syntastic
Plugin 'scrooloose/nerdtree'
"Plugin 'scrooloose/syntastic'
"Plugin 'SQLUtilities'
Plugin 'Align'
Plugin 'SyntaxAttr.vim'
"Plugin 'godlygeek/tabular'
Plugin 'pangloss/vim-javascript'

" Code completion (not java)
Plugin 'Valloric/YouCompleteMe'
" Fuzzy File searching
"Plugin 'kien/ctrlp.vim'
Plugin 'vim-latex/vim-latex'
Plugin 'reedes/vim-lexical'
" Surround.vim
Plugin 'tpope/vim-surround'

" sparkup html code completion/creation
Plugin 'rstacruz/sparkup'

" adds a bunch of color schemes to vim
Plugin 'flazz/vim-colorschemes'
Plugin 'Colortest'

" Less and css coloring
Plugin 'groenewege/vim-less'
Plugin 'chrisbra/Colorizer'

" javascript un-minifier 
Plugin 'maksimr/vim-jsbeautify'
Plugin 'einars/js-beautify'

" status line modifier
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-repeat'
Plugin 'dag/vim-fish'
"Plugin 'srang/cmus-remote-vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal

" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Enable syntax highlighting
syntax on

set omnifunc=syntaxcomplete#Complete
"Enable syntax code folding
"set foldmethod=syntax

"------------------------------------------------------------
" Must have options {{{1
"
" These are highly recommended options.

" Vim with default settings does not allow easy switching between multiple files
" in the same editor window. Users can use multiple split windows or multiple
" tab pages to edit multiple files, but it is still best to enable an option to
" allow easier switching between files.
"
" One such option is the 'hidden' option, which allows you to re-use the same
" window and switch from an unsaved buffer without saving it first. Also allows
" you to keep an undo history for multiple files when re-using the same window
" in this way. Note that using persistent undo also lets you undo in multiple
" files even in the same window, but is less efficient and is actually designed
" for keeping undo history after closing Vim entirely. Vim will complain if you
" try to quit without saving, and swap files will keep you safe if your computer
" crashes.

" ##set hidden

" Note that not everyone likes working this way (with the hidden option).
" Alternatives include using tabs or split windows instead of re-using the same
" window as mentioned above, and/or either of the following options:
" set confirm
" set autowriteall

" Better command-line completion
set wildmenu

" Show partial commands in the last line of the screen
set showcmd

" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch

" Modelines have historically been a source of security vulnerabilities. As
" such, it may be a good idea to disable them and use the securemodelines
" script, <http://www.vim.org/scripts/script.php?script_id=1876>.
" set nomodeline

" Set scrolloff which displays extra lines beyond the line the cursor is 
" on.
set scrolloff=3

"------------------------------------------------------------
" Usability options {{{1
"
" These are options that users frequently set in their .vimrc. Some of them
" change Vim's behaviour in ways which deviate from the true Vi way, but
" which are considered to add usability. Which, if any, of these options to
" use is very much a personal preference, but they are harmless.

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

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
set visualbell

" And reset the terminal code for the visual bell. If visualbell is set, and
" this line is also included, vim will neither flash nor beep. If visualbell
" is unset, this does nothing.
"set t_vb=

" Enable use of the mouse for all modes
set mouse=""

" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=1

" Display line numbers on the left
set number

" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200
if has('nvim')
  set ttimeout
  set ttimeoutlen=0
endif

" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>

" Don't add new line at end of file
set binary
set noeol
set wildignore+=*.so,*.swp

"------------------------------------------------------------
"Plugin Options
"These are options associated with installed plugins

"let g:EclimJavascriptValidate = 0
let g:EclimCompletionMethod = 'omnifunc'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#tab_nr_type = 1
"let g:airline#extensions#tabline#left_sep = '>'
"let g:airline#extensions#tabline#left_alt_sep = '|'
"let g:airline#extensions#tabline#right_sep = '<'
"let g:airline#extensions#tabline#right_alt_sep = '|'
let g:airline#extensions#tabline#show_close_button = 0


let g:NERDTreeWinSize = 50

augroup lexical
  autocmd!
  autocmd FileType tex call lexical#init()
augroup END



" JsBeautifier
map <c-f> :call JsBeautify()<cr>
" for js
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
autocmd FileType javascript vnoremap <buffer>  <c-f> :call RangeJsBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
autocmd FileType html vnoremap <buffer> <c-f> :call RangeHtmlBeautify()<cr>
autocmd FileType xml noremap <buffer> <c-f> :call HtmlBeautify()<cr>
autocmd FileType xml vnoremap <buffer> <c-f> :call RangeHtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>
autocmd FileType css vnoremap <buffer> <c-f> :call RangeCSSBeautify()<cr>
"------------------------------------------------------------
"Colors

colorscheme rangler

"Less/css coloring
let g:colorizer_auto_filetype='css,less'

"------------------------------------------------------------
"LaTex stuff
"
let g:tex_flavor='latex'
"Spell check English
au FileType tex setlocal spell spelllang=en_us

"Compile to pdf
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_MultipleCompileFormats='dvi,pdf'

let g:ycm_filetype_blacklist = {
  \ 'jrxml': 1,
  \ 'md': 1,
  \ 'sql': 1,
  \ 'vimrc': 1,
  \ 'javascript': 1
  \ }

let g:sql_type_default = 'mysql'
"------------------------------------------------------------
" Indentation options {{{1
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

" Indentation settings for using hard tabs for indent. Display tabs as
" two characters wide.
" set shiftwidth=2
" set tabstop=2

"------------------------------------------------------------
" Listchars useful for finding unwanted whitespace
set list listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<,space:·
let java_space_errors=1

"------------------------------------------------------------
" Mappings {{{1
"
" Useful mappings

" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
nnoremap Y y$

"nmap <C-J> :set number! number?<CR>
" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>
set tildeop

nnoremap <C-J> o<esc>k
nnoremap <C-K> O<esc>j
" let mapleader = "-"
nnoremap <leader>d :NERDTreeToggle<CR>
nnoremap <leader>q :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>
nnoremap <leader>ev :tabe $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
autocmd FileType java nnoremap <buffer> <leader>ji :JavaImportOrganize<CR>
autocmd FileType java nnoremap <buffer> <leader>sc :JavaSearchContext<CR>
" nnoremap -d :NERDTreeToggle<CR>
" nnoremap -q :NERDTreeToggle<CR>
" nnoremap -f :NERDTreeFind<CR>
" nnoremap -ev :tabe $MYVIMRC<cr>
" nnoremap -sv :source $MYVIMRC<cr>
nnoremap H _
vnoremap H _
nnoremap L $
vnoremap L $
vnoremap <C-C> "+y
nnoremap <C-C> "+p
vnoremap <C-K> <esc>'<O/*<esc>'>o*/<esc>
nnoremap <C-H> :call SyntaxAttr()<CR>
nnoremap <C-Up> <C-a>
vnoremap <C-Up> <C-a>
nnoremap <C-Down> <C-x>
vnoremap <C-Down> <C-x>
"------------------------------------------------------------
" Abbrevs {{{1
"------------------------------------------------------------