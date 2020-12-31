"              ██
"             ░░
"    ██    ██  ██  ██████████   ██████   █████
"   ░██   ░██ ░██ ░░██░░██░░██ ░░██░░█  ██░░░██
"   ░░██ ░██  ░██  ░██ ░██ ░██  ░██ ░  ░██  ░░ 
" ██ ░░████   ░██  ░██ ░██ ░██  ░██    ░██   ██
"░██  ░░██    ░██  ███ ░██ ░██ ░███    ░░█████
"░░    ░░     ░░  ░░░  ░░  ░░  ░░░      ░░░░░


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

Plugin 'michaeljsmith/vim-indent-object'
Plugin 'junegunn/fzf.vim'

" Eclim mirror through github (eclim 2.5)
" Plugin 'corvec/eclim-for-vundle'
Plugin 'srang/eclim-vim'

Plugin 'restore_view.vim'

" snippets library
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

Plugin 'majutsushi/tagbar'

" Nerd tree file system explorer and syntastic
Plugin 'scrooloose/nerdtree'

Plugin 'Align'
Plugin 'SyntaxAttr.vim'

" supposedly handles all these
"Plugin 'pangloss/vim-javascript'
"Plugin 'vim-latex/vim-latex'
"Plugin 'groenewege/vim-less'
Plugin 'sheerun/vim-polyglot'
" override js.vim
Plugin 'pangloss/vim-javascript'
" Code completion (not java)
Plugin 'Valloric/YouCompleteMe'

" Fuzzy File searching
"Plugin 'kien/ctrlp.vim'

Plugin 'reedes/vim-lexical'
" Surround.vim
Plugin 'tpope/vim-surround'

" sparkup html code completion/creation
Plugin 'mattn/emmet-vim'

" adds a bunch of color schemes to vim
Plugin 'flazz/vim-colorschemes'
Plugin 'Colortest'

" Less and css coloring
" Plugin 'chrisbra/Colorizer'
Plugin 'ap/vim-css-color'

" javascript un-minifier 
Plugin 'maksimr/vim-jsbeautify'
Plugin 'einars/js-beautify'

" not compatible with neovim
"Plugin 'sjl/gundo.vim'
"fork
Plugin 'simnalamburt/vim-mundo'

"Plugin 'kbarrette/mediummode'

" status line modifier
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-repeat'

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
" this doesn't work with opening new tabs
"augroup vimrc
"  au BufReadPre * setlocal foldmethod=indent
"  au BufWinEnter * if &fdm == 'indent' | setlocal foldmethod=manual | endif
"augroup END

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
" 'press <Enter> to continue'
set cmdheight=2

" Display line numbers on the left
"set number

" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200
if has('nvim')
  set ttimeout
  set ttimeoutlen=0
endif

" Don't add new line at end of file
set binary
set noeol
set wildignore+=*.so,*.swp

" Save undo history
set undofile
set undodir=/home/srang/.vim/history

"------------------------------------------------------------
"Plugin Options
"These are options associated with installed plugins

"let g:EclimJavascriptValidate = 0
let g:EclimCompletionMethod = 'omnifunc'

let g:surround_{char2nr('b')} = "**\r**"

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#show_close_button = 0
let g:airline_section_a = airline#section#create(['mode',' ','branch'])

let NERDTreeQuitOnOpen = 1
let g:NERDTreeWinSize = 50

augroup lexical
  autocmd!
  autocmd FileType markdown,mkd,md call lexical#init()
  autocmd FileType asciidoc call lexical#init()
  autocmd FileType tex call lexical#init()
augroup END

let g:UltiSnipsExpandTrigger = "<nop>"
let g:ulti_expand_or_jump_res = 0

function! ExpandSnippetOrCarriageReturn()
    let snippet = UltiSnips#ExpandSnippetOrJump()
    if g:ulti_expand_or_jump_res > 0
        return snippet
    else
        return "\<CR>"
    endif
endfunction
inoremap <expr> <CR> pumvisible() ? "<C-R>=ExpandSnippetOrCarriageReturn()<CR>" : "\<CR>"
let g:UltiSnipsEditSplit='vertical'

let g:ycm_filetype_blacklist = {
  \ 'jrxml': 1,
  \ 'md': 1,
  \ 'sql': 1,
  \ 'vimrc': 1
  \ }
  "\ 'javascript': 1,

let g:mediummode_motion_keys = ['h', 'j', 'k', 'l', '-', '+']

let g:sql_type_default = 'mysql'
" sBeautifier
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

let mapleader = "-"
"
" Useful mappings

" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
nnoremap Y y$

" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>
set tildeop
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

let g:lexical#spell_key = '<leader>sp'
let g:user_emmet_leader_key='!'
let g:UltiSnipsJumpForwardTrigger='<leader>k'
let g:UltiSnipsJumpBackwardTrigger='<leader>j'
let g:UltiSnipsListSnippets='<leader>ls'

nnoremap <leader><space> :TagbarToggle<cr>
nnoremap <leader>mm :MediumModeToggle<cr>
nnoremap <leader>g :MundoToggle<cr>
nnoremap <leader>se :UltiSnipsEdit<cr>
nnoremap <leader>sn :call NumberToggle()<cr>
nnoremap <leader>q gqip
nnoremap <leader>d :let NERDTreeQuitOnOpen = 1 <bar> NERDTreeToggle<CR>
nnoremap <leader><S-D> :let NERDTreeQuitOnOpen = 0 <bar> NERDTreeToggle<CR>
nnoremap <leader>f :let NERDTreeQuitOnOpen = 1 <bar> NERDTreeFind<CR>
nnoremap <leader><S-F> :let NERDTreeQuitOnOpen = 0 <bar> NERDTreeFind<CR>
nnoremap <leader>ev :tabe $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
autocmd FileType java nnoremap <buffer> <leader>ji :JavaImportOrganize<CR>
autocmd FileType java nnoremap <buffer> <leader>sc :JavaSearchContext<CR>
vnoremap <leader>c "+y
nnoremap <leader>v "+p
nnoremap <leader><s-v> "+P
vnoremap <leader>v "+p
vnoremap <leader><s-v> "+P
nnoremap <leader>bj  :call JsBeautify()<cr>
vnoremap <leader>bj  :call RangeJsBeautify()<cr>
nnoremap <leader>bx  :call HtmlBeautify()<cr>
vnoremap <leader>bx  :call RangeHtmlBeautify()<cr>
nnoremap <leader>bc  :call CSSBeautify()<cr>
vnoremap <leader>bc  :call RangeCSSBeautify()<cr>
autocmd FileType vim nnoremap <leader>ip :source $MYVIMRC
nnoremap <leader>wv <c-w>v
nnoremap <leader>ww <c-w>w
nnoremap <leader>ws <c-w>s
nnoremap <leader>wz <c-w>z
nnoremap <leader>h :%!xxd

nnoremap <C-J> gj
nnoremap <C-K> gk
nnoremap <C-H> :call SyntaxAttr()<CR>
vnoremap <S-K> <esc>'<O/*<esc>'>o*/<esc>
nnoremap H _
vnoremap H _
nnoremap L $
vnoremap L $
nnoremap <Up> Vk
vnoremap <Up> k
nnoremap <Down> Vj
vnoremap <Down> j
nnoremap <Left> %
vnoremap <Left> %
nnoremap <Right> *
nnoremap <space> za


" remap folding commands


" Use one of the following to define the camel characters.
" Stop on capital letters.
let g:camelchar = "A-Z"
" Also stop on numbers.
"let g:camelchar = "A-Z0-9"
" Include '.' for class member, ',' for separator, ';' end-statement,
" and <[< bracket starts and "'` quotes.
"let g:camelchar = "A-Z0-9.,;:{([`'\""
nnoremap <silent><C-Left> :<C-u>call search('\C\<\<Bar>\%(^\<Bar>[^'.g:camelchar.']\@<=\)['.g:camelchar.']\<Bar>['.g:camelchar.']\ze\%([^'.g:camelchar.']\&\>\@!\)\<Bar>\%^','bW')<CR>
nnoremap <silent><C-Right> :<C-u>call search('\C\<\<Bar>\%(^\<Bar>[^'.g:camelchar.']\@<=\)['.g:camelchar.']\<Bar>['.g:camelchar.']\ze\%([^'.g:camelchar.']\&\>\@!\)\<Bar>\%$','W')<CR>
inoremap <silent><C-Left> <C-o>:call search('\C\<\<Bar>\%(^\<Bar>[^'.g:camelchar.']\@<=\)['.g:camelchar.']\<Bar>['.g:camelchar.']\ze\%([^'.g:camelchar.']\&\>\@!\)\<Bar>\%^','bW')<CR>
inoremap <silent><C-Right> <C-o>:call search('\C\<\<Bar>\%(^\<Bar>[^'.g:camelchar.']\@<=\)['.g:camelchar.']\<Bar>['.g:camelchar.']\ze\%([^'.g:camelchar.']\&\>\@!\)\<Bar>\%$','W')<CR>
vnoremap <silent><C-Left> :<C-U>call search('\C\<\<Bar>\%(^\<Bar>[^'.g:camelchar.']\@<=\)['.g:camelchar.']\<Bar>['.g:camelchar.']\ze\%([^'.g:camelchar.']\&\>\@!\)\<Bar>\%^','bW')<CR>v`>o
vnoremap <silent><C-Right> <Esc>`>:<C-U>call search('\C\<\<Bar>\%(^\<Bar>[^'.g:camelchar.']\@<=\)['.g:camelchar.']\<Bar>['.g:camelchar.']\ze\%([^'.g:camelchar.']\&\>\@!\)\<Bar>\%$','W')<CR>v`<o

" allow local vimrc
set exrc
set secure
" "easier" inc/decrement
"nnoremap <C-Up> <C-a>
"vnoremap <C-Up> <C-a>
"nnoremap <C-Down> <C-x>
"vnoremap <C-Down> <C-x>

"figure out functions so autoformat db scripts
" :'<,'>s:\([`a-zA-Z\. ]\+\),:\1,\r  :g
" :%s: select :\rSELECT\r  :
" :'<,'>s:\((\|)\)::g
" :'<,'>s: \(\(left \|\)join\):\r  \1:g
" :'<,'>s:^  join:  INNER JOIN:
" :'<,'>s:  left join:  LEFT JOIN:
" :%s: where :\rWHERE :
" :'<,'>s: from :\rFROM :
" :'<,'>s: on`: ON :g
" :%s:`::g
"------------------------------------------------------------
" Abbrevs {{{1
"------------------------------------------------------------