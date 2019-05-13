"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General, UI
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable

" always show current position
set ruler

" ignores case, smarter about cases, highlights search cases, incremental search
set ignorecase
set smartcase
set hlsearch
set incsearch

" dont redraw while executing macros (good perfomance config)
set lazyredraw

" no more annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" properly disable sound on eeors on MacVim
if has("gui_macvim")
    autocmd GUIEnter * set vb t_vb=
endif

" add a bit extra margin to the left
set foldcolumn=1

" enable 256 colors palette in Gnome Terminal
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

try
    colorscheme desert
catch
endtry

" set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" use Unix as the standard file type
set ffs=unix,dos,mac

" numbers the lines
set number

" ui customizations
set textwidth=79
set tabstop=4
set shiftwidth=4
set softtabstop=4

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tabs
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" uses spaces instead of tabs, smart tabbing :-)
set expandtab
set smarttab

" linebreak on 500 characters
set lbr
set tw=500

set ai " auto indent
set si " smart indent
set wrap " wrap lines

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Viual mode stuff
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maps
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <c-space> ?

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Status line
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" always show the status line
set laststatus=2

""""""""""""""""""""""""""""""""""""""""""""""""""""
" Spell checking
""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>
