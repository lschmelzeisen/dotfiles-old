" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim80/vimrc_example.vim or the vim manual
" and configure vim to your own liking!

" do not load defaults if ~/.vimrc is missing
"let skip_defaults_vim=1


" ==============================================================================
" === vimrc of Lukas Schmelzeisen ==============================================

" Behave like a windows programm, i.e. gives the expected functionality i.a. to
" Ctrl-X, Ctrl-C, Ctrl-V, Ctrl-S, Ctrl-Z, Ctrl-Y, Ctrl-A, Ctrl-F, and Ctrl-H.
source $VIMRUNTIME/mswin.vim
behave mswin

" --- vim-plug plugin manager --------------------------------------------------
" see https://github.com/junegunn/vim-plug
call plug#begin('/usr/share/vim/vimfiles/plugged')
    " Arguments to Plug are github repositories
    " After chaning this you have to manually enter :PlugInstall
    Plug 'tpope/vim-sensible'   " Sensible vim defaults
    Plug 'morhetz/gruvbox'      " gruvbox color scheme
    Plug 'Yggdroot/IndentLine'  " Indentation lines
    Plug 'vim-airline/vim-airline'  " Alternative status-/tabline
call plug#end()

" vim-plug automatically executes the following:
"filetype plugin indent on      " Enable file type plugins
"syntax enable                  " Enable syntax highlighting

" --- Search -------------------------------------------------------------------
set wrapscan                    " Allows searches at end of file to continue at
                                " beginning of file
set ignorecase                  " Ignore case when searching
set smartcase                   " When searching try to be smart about cases
set hlsearch                    " Highlight search results
set magic                       " Enable regular expressions

" --- Indentation --------------------------------------------------------------
set expandtab                   " Indent with spaces (instead of tabs)
set shiftwidth=4                " Number of spaces to use per indent
set tabstop=4                   " Number of spaces to visualize tabs with.
set smarttab
set autoindent                  " Copy indent of current line for new lines.
set smartindent

" --- GUI ----------------------------------------------------------------------
set guioptions-=m               " Hide menubar
set guioptions-=T               " Hide toolbar
set guioptions-=r               " Hide scrollbar
set guifont=TamzenForPowerline\ 11  "Font

" --- Saving -------------------------------------------------------------------
set encoding=utf8               " Set UTF-8 as standard encoding
set ffs=unix,dos,mac            " Use Unix as the standard file type
set noswapfile                  " Disable swap file
" Delete trailing white space on save
func! DeleteTrailingWS()
    exe "normal mz"
    %s/\s\+$//ge
    exe "normal `z"
endfunc
autocmd BufWrite * :call DeleteTrailingWS()

" --- Color Scheme -------------------------------------------------------------
set termguicolors               " Use true colors in terminal
let g:gruvbox_italic=1          " Use italics in terminal
let g:gruvbox_number_column='bg1'   " Change number column background color
let g:gruvbox_contrast_dark='hard'  " Use hard contrast on dark theme
let g:gruvbox_contrast_light='hard' " Use hard contrast on light theme
set background=dark             " Use dark theme by default
colorscheme gruvbox             " Use gruvbox colorscheme (keep at end)

" --- Airline  -----------------------------------------------------------------
let g:airline_powerline_fonts = 1

" --- Miscellaneous ------------------------------------------------------------
set number                      " Show line numbers
set colorcolumn=81              " Highlight 81st column
set nowrap                      " Dont wrap overlong lines
set showmatch                   " Highlight matching brackets
"set spell                      " Enable spell checking
set spelllang=en,de             " Spell checking in English and German
let g:indentLine_char='│'       " Indentation character
" Enable modeline (what is this?)
set modeline
set modelines=5
" No annoying sounds on errors
set noerrorbells
set novisualbell
autocmd GUIENTER * set t_vb=
set timeoutlen=500

" --- File Specific ------------------------------------------------------------
" Set indent width to 2 spaces for XML files
autocmd FileType xml setlocal shiftwidth=2 tabstop=2
" Set syntax hightlight to prolog on *.pro files
au BufNewFile,BufRead *.pro set filetype=prolog
