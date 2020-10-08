filetype plugin indent on  "Enabling Plugin & Indent
syntax enable                           " Enables syntax highlighing
set nocompatible
    """set backspace=indent,eol,start confirm
    ""set hidden                              " Required to keep multiple buffers open multiple buffers
    ""set nowrap                              " Display long lines as just one line
set encoding=utf-8                      " The encoding displayed 
    ""set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler                               " Show the cursor position all the time
set cmdheight=1                         " More space for displaying messages
    ""set iskeyword+=-                       " treat dash separated words as a word text object"
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=4                           " Insert 2 spaces for a tab
set softtabstop=4                       " Number of spaces that a <Tab> counts for while performing editing
set shiftwidth=4                        " Change the number of space characters inserted for indentation
    ""set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
setlocal foldmethod=indent
set foldlevel=5
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\[HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set laststatus=2                        " Always display the status line
set cursorline                          " Enable highlighting of the current line
set cursorcolumn                        " Enable highlighting of the current column
set colorcolumn=80
set nojoinspaces    " Prevents inserting two spaces after punctuation on a join (J)
    ""set background=dark                     " tell vim what the background color looks like
    ""set showtabline=2                       " Always show tabs 
    ""set noshowmode                          " We don't need to see things like -- INSERT -- anymore
    ""set nobackup                            " This is recommended by coc
    ""set nowritebackup                       " This is recommended by coc
set updatetime=250                      " Faster completion
set timeoutlen=100                      " By default timeoutlen is 1000 ms
set formatoptions-=cro                  " Stop newline continution of comments
    ""set clipboard=unnamedplus               " Copy paste between vim and everything else
    ""set autochdir                           " Your working directory will always be the same as your working directory
set showcmd         " Show (partial) command in status line.
"set showmatch       " Show matching brackets.
    ""set ignorecase     " Do case insensitive matching
"set smartcase       " Do smart case matching
    ""set incsearch      " Incremental search
"set hlsearch        " Highlight searches , Ctrl-S is being captured to initiate a search
set autowrite      " Automatically save before commands like :next and :make
    ""set nolinebreak
    ""set wrap linebreak textwidth=100
set tabpagemax=15   " Set the maximum number of tabpages in editor

if has('diffopt')
    set diffopt+=algorithm:patience
    set diffopt+=indent-heuristic
end

" Toggling of hybrid line numbers
"set number
:set number relativenumber
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

"au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vim alternatively you can run :source $MYVIMRC

"" You can't stop me
"cmap w!! w !sudo tee %
