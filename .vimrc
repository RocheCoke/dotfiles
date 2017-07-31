"Vundle setup:

set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)

Plugin 'elzr/vim-json'			 	"easier to read json
Plugin 'tpope/vim-commentary'		"gcc = comment
Plugin 'airblade/vim-gitgutter' 	"shows changes since commit on the left
Plugin 'Valloric/YouCompleteMe' 	"competion and goto
"Plugin 'easymotion/vim-easymotion' ",,w = jump to wod
"Plugin 'vim-pandoc/vim-pandoc' 	"markdown thing
"Plugin 'vim-pandoc/vim-pandoc-syntax'
"Plugin 'tope/vim-fugitive' 		"git wrapper

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


let mapleader = ','

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" 2 ways to follow tags without pinky finger (todo, remove the second):
map gk <C-]>
map <C-k> <C-]>


set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

set nu

" wrap markdown:
au BufRead,BufNewFile *.md setlocal textwidth=80

"makes command use aliases, i.e. a user terminal session
set shellcmdflag+=i

"Antons remaps:"
"end line swedish layout
":nmap ¤ $

"Escape terminal mode in neovim:
if exists(':tnoremap')
	tnoremap <Esc> <C-\><C-n>
endif

" Clear highlighting on escape in normal mode
nnoremap <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[

"space to single char map
:nmap <Space> i_<Esc>r

" paste in visual mode with p"
vnoremap p "_dP

" Clipboard sharing on mac osx, first run brew install vim
set clipboard=unnamed

" look for tags in parent dir if not found
set tags=./tags;/

"Downloaded TAB Hax:
"Use TAB to complete when typing words, else inserts TABs as usual.
"Uses dictionary and source files to find matching words to complete.

"See help completion for source,
"Note: usual completion is on <C-n> but more trouble to press all the time.
"Never type the same word twice and maybe learn a new spellings!
"Use the Linux dictionary when spelling is in doubt.
"Window users can copy the file to their machine.

"function! Tab_Or_Complete()
"  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
"          return "\<C-N>"
"        else
"	    return "\<Tab>"
"	      endif
"	      endfunction
":inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
":set dictionary="/usr/dict/words"

"emacs in command line
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
cnoremap <M-b> <S-Left>
cnoremap <M-f> <S-Right>

"notes, to have a terminal window: 
" :ConqueTerm bash
"after: installing the vimball by opening it, then so %

" Helpful keybindings for function keys on a mac
"map! only does in command and insert mode.
"use read in bash to see what to map (like <esc>[5~

"map <Esc>[5~ <C-B>
"map <Esc>[6~ <C-F>
"map <Esc>[3~ x
"map! <Esc>[3~ <Del>

"map <Esc>[H 0
"map <Esc>[F $
"map! <Esc>[H <Home>
"map! <Esc>[F <End>  





" System vimrc file for Mac OS X
" Author:  Benji Fisher <benji@member.AMS.org>
" Last modified:  8 May 2006

" Note:  Do not move this to the gvimrc file, else this value of $PATH will
" not be available to plugin scripts.
if has("gui_running") && system('ps xw | grep "Vim -psn" | grep -vc grep') > 0
  " Get the value of $PATH from a login shell.
  " If your shell is not on this list, it may be just because we have not
  " tested it.  Try adding it to the list and see if it works.  If so,
  " please post a note to the vim-mac list!
  if $SHELL =~ '/\(sh\|csh\|bash\|tcsh\|zsh\)$'
    let s:path = system("echo echo VIMPATH'${PATH}' | $SHELL -l")
    let $PATH = matchstr(s:path, 'VIMPATH\zs.\{-}\ze\n')
  endif
endif

" turn color syntax highlighting on by default
" set term=builtin_beos-ansi
syntax on

" set auto-indenting on for programming
"set ai

" turn off compatibility with the old vi
set nocompatible

" turn on the "visual bell" - which is much quieter than the "audio blink"
set vb

" highlight words when searching for them. it's distracting.
set hlsearch

" case insensitive. Put \C anywhere in search to do case sensitive (opposite of \c) 
set ignorecase

" automatically use case sensitive if it contains upper case chars (unless \c or \C is used)
set smartcase

" automatically show matching brackets. works like it does in bbedit.
set showmatch

" do NOT put a carriage return at the end of the last line! if you are programming
" for the web the default will cause http headers to be sent. that's bad.
set binary noeol

" make that backspace key work the way it should
set backspace=indent,eol,start

set mousef

" set margin wrapping
set wrapmargin=1

" Disable automatic comments.  These get annoying
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o


" Pydiction:
"filetype plugin on
"let g:pydiction_location = '/Users/anton/.vim/bundle/pydiction/complete-dict'


" Vim color file
" Maintainer:   Gerald S. Williams
" Last Change:  2003 Mar 20

" This is a dark version/opposite of "seashell". The cterm version of this is
" very similar to "evening".
"
" Only values that differ from defaults are specified.

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
"let g:colors_name = "BlackSea"

"color desert

hi Normal guibg=Black guifg=seashell ctermfg=White
hi NonText guifg=LavenderBlush ctermfg=LightMagenta
hi DiffDelete guibg=DarkRed guifg=Black ctermbg=DarkRed ctermfg=Black
hi DiffAdd guibg=DarkGreen ctermbg=DarkGreen ctermfg=Black
hi DiffChange guibg=Gray30 ctermbg=DarkCyan ctermfg=Black
hi DiffText gui=NONE guibg=Cyan ctermbg=Cyan ctermfg=Black
hi Comment guifg=LightBlue
hi Constant guifg=DeepPink
hi PreProc guifg=Magenta ctermfg=Magenta
hi StatusLine guibg=Black guifg=Gray30 cterm=NONE ctermfg=Black ctermbg=LightGray
hi StatusLineNC guifg=Gray
hi VertSplit guifg=Gray
hi Type gui=NONE
hi Identifier guifg=Cyan
hi Statement guifg=brown3 ctermfg=DarkRed
