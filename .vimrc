" Disable the fullscreen toggle touchbar icon
" Must be at top
let g:macvim_default_touchbar_fullscreen=0
" Other mac touchbar silliness
" :help touchbar in MacVim
" Permanently remove full screen toggle in touch bar
" https://github.com/macvim-dev/macvim/issues/997
"if has("gui_macvim")
"  " Remove existing icons from touch bar
"  aunmenu TouchBar.
"endif



" .vimrc for david.sloboda@gmail.com
set nocompatible              " be iMproved, required
filetype off                  " required for vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'vimwiki'
Bundle 'mattn/calendar-vim'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" try folding Markdown
" https://github.com/plasticboy/vim-markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
"
" forget black
"Plugin 'psf/black'
" https://github.com/vim-airline/vim-airline
Plugin 'vim-airline/vim-airline'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
syntax on                     " required for vimwiki
" set textwidth=80
set textwidth=0    " try without the hard wrap at 80 for a bit
" https://stackoverflow.com/questions/5419848/backspace-doesnt-work-in-gvim-7-2-64-bit-for-windows
set backspace=indent,eol,start
"colorscheme elflord
colorscheme murphy
" size of an "indent"
set shiftwidth=4
set tabstop=4
set expandtab
" do not break words across lines
set linebreak
" from http://stackoverflow.com/questions/13446144/missing-leader-in-vim
set autoindent
set hidden
set incsearch
set hlsearch
" from http://learnvimscriptthehardway.stevelosh.com/chapters/06.html
let mapleader = " "
" from http://learnvimscriptthehardway.stevelosh.com/chapters/10.html
" use jk together to leave insert mode, not <escape>
" In fact, map either.  Helps correct typos.
inoremap jk <esc>
inoremap kj <esc>
" http://vim.wikia.com/wiki/Avoid_the_escape_key
"inoremap <esc> <nop>  " This causes problems with the cursor.
" turn off the toolbar (icons) in gvim
:set guioptions-=T
" http://vi.stackexchange.com/questions/9070/set-line-numbers-only-while-in-normal-mode
" sloboda first autogroup ---------------------- {{{
augroup sloboda_first_augroup
    autocmd!
    " http://learnvimscriptthehardway.stevelosh.com/chapters/14.html
    au InsertEnter * set nonumber
    au InsertLeave * set number
    " use <localleader>c for comment in any defined language
    au FileType javascript nnoremap <buffer> <localleader>c I//<esc>
    au FileType python     nnoremap <buffer> <localleader>c I#<esc>
    au FileType tex      nnoremap <buffer> <localleader>c I%<esc>
augroup END
" }}}
" http://learnvimscriptthehardway.stevelosh.com/chapters/01.html
" echo '>^.^<'
" http://learnvimscriptthehardway.stevelosh.com/chapters/07.html
nnoremap  <leader>sv   :source $MYVIMRC<CR>
nnoremap  <leader>ev   :vsplit $MYVIMRC<CR>
" http://stackoverflow.com/questions/5375240/a-more-useful-statusline-in-vim
set statusline=
set statusline +=%1*\ %n\ %*            "buffer number
set statusline +=%5*%{&ff}%*            "file format
set statusline +=%3*%y%*                "file type
set statusline +=%4*\ %<%F%*            "full path
set statusline +=%2*%m%*                "modified flag
set statusline +=%1*%=%5l%*             "current line
set statusline +=%2*/%L%*               "total lines
set statusline +=%1*%4v\ %*             "virtual column number
set statusline +=%2*0x%04B\ %*          "character under cursor
hi User1 guifg=#eea040 guibg=#222222
hi User2 guifg=#dd3333 guibg=#222222
hi User3 guifg=#ff66ff guibg=#222222
hi User4 guifg=#a0ee40 guibg=#222222
hi User5 guifg=#eeee40 guibg=#222222
" http://learnvimscriptthehardway.stevelosh.com/chapters/32.html
"nnoremap <leader>g :silent execute "grep! -R " . shellescape(expand("<cWORD>")) . " ."<cr>:copen<cr>
"
" abbreviations
" These help correct typpos.  ;-)
ab adn and
ab boht both
ab destory destroy
ab dya day
ab frist first
ab hte the
ab HTe The
ab Hte The
ab hten then
ab htis this
ab inthe in the
ab jsut just
ab lpfrpg legendary Pathfinder Role Playing Game campaign County Playground: The Grand Grind
ab mroe more
ab nad and
ab reh the
ab teh the
ab Teh The
ab THe The
ab thr the
ab tyds Thank you,<cr>David Sloboda
ab wehre where
ab YOu You


" set up links to Public and Private wiki
let wiki_1 = {}
let wiki_1.path = '/Users/daslobod/Documents/Journal/'
let wiki_1.path_html = '/Users/daslobod/Documents/Journal_html/'
let wiki_1.syntax = 'markdown'
let wiki_1.ext = '.md'
let wiki_1.index = 'README'
let wiki_1.diary_rel_path = 'logbook'
let wiki_1.diary_index = 'index'
let g:vimwiki_list = [wiki_1]

let g:vimwiki_ext2syntax = { '.markd' : 'markdown', '.mkd' : 'markdown', '.md' : 'markdown', '.markdown' : 'markdown', '.mdown' : 'markdown' }


" show tabs as two characters, preserving visual alignment
" Also show more for listchars
" http://vi.stackexchange.com/questions/422/displaying-tabs-as-characters
set listchars=eol:⏎,tab:␉·,trail:␠,nbsp:⎵

""" Vimscript file settings ---------------------- {{{
""augroup filetype_vim
""    autocmd!
""    autocmd FileType vim setlocal foldmethod=marker
""augroup END
""" }}}
let g:markdown_folding = 1


" highlight ColorColumn ctermbg=magenta
" call matchadd('ColorColumn', '\%81v.', 100)
"
" rework wikilink
":vnoremap <leader>wd c()<ESC>P
":vnoremap <leader>wf c[][]<ESC>hhPll
":vnoremap <leader>wg c[]()<ESC>hhPll

" enable spell check at start
set spell spelllang=en_ca

" python standards at employer requires black format
" https://github.com/psf/black
" https://github.office.opendns.com/slvpn/slvpn-docs/tree/master/standards/python
" 2024-11-26 No No No - Not working.
":autocmd BufWritePost *.py !black
" turn off beep
autocmd! GUIEnter * set vb t_vb=
