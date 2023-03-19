set runtimepath^=~/.nvim runtimepath+=~/.nvim/after
let &packpath = &runtimepath
set backupdir=~/.nvim/backups
set directory=~/.nvim/swaps
set undodir=~/.nvim/undo

" Make vim useful.
set nocompatible
set number

" Plugins.
call plug#begin()
Plug 'kyazdani42/nvim-web-devicons'  " NvimTree icons
Plug 'kyazdani42/nvim-tree.lua'  " A file explorer tree
Plug 'akinsho/bufferline.nvim'  " Tabline
Plug 'nvim-lualine/lualine.nvim'  " Statusline
Plug 'vim-scripts/a.vim'  " Switch between .c/.cc/.cpp and .h/.hh/.hpp
Plug 'sheerun/vim-polyglot'  " Syntax highlighting
Plug 'tpope/vim-surround'  " Change surrounding characters
Plug 'spf13/vim-autoclose'  " Automatically insert closing parentheses/brackets
Plug 'Yggdroot/indentLine'  " Display indentation levels with vertical lines
Plug 'osyo-manga/vim-anzu'  " Display search status
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }  " Colorscheme
Plug 'ntpeters/vim-better-whitespace'  " Display trailing whitespaces
Plug 'kien/ctrlp.vim'  " Fuzzy search
Plug 'tpope/vim-fugitive'  " Git
call plug#end()

" Colors and Fonts.
syntax enable
set t_Co=256
set encoding=utf-8
set termguicolors
colorscheme catppuccin-frappe

" Configuration.
set autoindent " Copy indent from last line when starting new line
set autoread " Set to auto read when a file is changed from the outside
set backspace=indent,eol,start
set cursorline " Highlight current line
set foldcolumn=0 " Column to show folds
set foldenable " Enable folding
set foldlevel=0 " Close all folds by default
set foldmethod=syntax " Syntax are used to specify folds
set foldminlines=0 " Allow folding single lines
set foldnestmax=5 " Set max fold nesting level
set formatoptions=
set formatoptions+=c " Format comments
set formatoptions+=r " Continue comments by default
set formatoptions+=o " Make comment when using o or O from comment line
set formatoptions+=q " Format comments with gq
set formatoptions+=n " Recognize numbered lists
set formatoptions+=2 " Use indent from 2nd line of a paragraph
set formatoptions+=l " Don't break lines that are already long
set formatoptions+=1 " Break before 1-letter words
set gdefault " By default add g flag to search/replace. Add g to toggle
set guicursor=
set hidden " When a buffer is brought to foreground, remember undo history and marks
set history=500 " Increase history from 20 default to 1000
set hlsearch " Highlight searches
set ignorecase
set incsearch " Highlight dynamically as pattern is typed
set laststatus=2 " Always show status line
set lazyredraw " Don't redraw when we don't have to
set lispwords+=defroutes " Compojure
set lispwords+=defpartial,defpage " Noir core
set lispwords+=defaction,deffilter,defview,defsection " Ciste core
set lispwords+=describe,it " Speclj TDD/BDD
set magic " Enable extended regexes
set mouse=a " Enable mouse in all in all modes
set noerrorbells " Disable error bells
set nojoinspaces " Only insert single space after a '.', '?' and '!' with a join command
set nostartofline " Don't reset cursor to start of line when moving around
set nowrap " Do not wrap lines
set ofu=syntaxcomplete#Complete " Set omni-completion method
set regexpengine=1 " Use the old regular expression engine (it's faster for certain language syntaxes)
set report=0 " Show all changes
set ruler " Show the cursor position
set scrolloff=3 " Start scrolling three lines before horizontal border of window
set shell=/bin/sh " Use /bin/sh for executing shell commands
set expandtab " Expand tabs to spaces
set shiftwidth=2 " # of spaces to indent
set softtabstop=2 " # of spaces to convert a tab to
set shortmess=atI " Don't show the intro message when starting vim
set showtabline=2 " Always show tab bar
set sidescrolloff=3 " Start scrolling three columns before vertical border of window
set smartcase " Ignore 'ignorecase' if search patter contains uppercase characters
set smarttab " At start of line, <Tab> inserts shiftwidth spaces, <Bs> deletes shiftwidth spaces
set splitbelow " New window goes below
set splitright " New windows goes right
set suffixes=.bak,~,.swp,.swo,.o,.d,.info,.aux,.log,.dvi,.pdf,.bin,.bbl,.blg,.brf,.cb,.dmg,.exe,.ind,.idx,.ilg,.inx,.out,.toc,.pyc,.pyd,.dll
set switchbuf=""
set ttyfast " Send more characters at a given time
set undofile " Persistent Undo
set visualbell " Use visual bell instead of audible bell (annnnnoying)
set wildchar=<TAB> " Character for CLI expansion (TAB-completion)
set wildignore+=.DS_Store
set wildignore+=*.jpg,*.jpeg,*.gif,*.png,*.gif,*.psd,*.o,*.obj,*.min.js
set wildignore+=*/bower_components/*,*/node_modules/*
set wildignore+=*/smarty/*,*/vendor/*,*/.git/*,*/.hg/*,*/.svn/*,*/.sass-cache/*,*/log/*,*/tmp/*,*/build/*,*/ckeditor/*,*/doc/*,*/source_maps/*,*/dist/*
set wildmenu " Hitting TAB in command mode will show possible completions above command line
set wildmode=list:longest " Complete only until point of ambiguity
set winminheight=0 " Allow splits to be reduced to a single line
set wrapscan " Searches wrap around end of file
set nofoldenable " disable folding
set relativenumber " relative line numbers
set tags=tags " ctags
set shell=/bin/zsh

" Buffers.
nmap <S-j> :bp<CR>
nmap <S-k> :bn<CR>
nmap <C-t> :e newfile<CR>
nmap <C-w> :bp<CR>:bd #<CR>

" Panes.
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-l> :wincmd l<CR>
nmap <silent> <c-\> :vsp<CR>

lua << EOF
require("bufferline").setup {
  options = {
    buffer_close_icon = ' ×',
    modified_icon = ' •',
    offsets = {{filetype = "NvimTree", text = "File Explorer", text_align = "left"}},
    separator_style = 'thin',
  }
}
require('lualine').setup {
  options = {
    component_separators = { left = '|', right = '|'},
    section_separators = { left = '', right = ''}
  }
}
require("nvim-tree").setup { view = { width = 35 } }
local function open_nvim_tree()
  require("nvim-tree.api").tree.toggle({ focus = false })
end
vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
EOF

nmap <C-c> :wincmd p<CR>
nmap <C-f> :NvimTreeToggle<CR>:wincmd p<CR>

" Custom commands.
cnoremap q qa
command Term :vsp | term

" Comfortable motion
"let g:comfortable_motion_no_default_key_mappings = 1
"let g:comfortable_motion_friction = 30.0
"let g:comfortable_motion_air_drag = 10.0
"noremap <silent> <ScrollWheelDown> :call comfortable_motion#flick(20)<CR>
"noremap <silent> <ScrollWheelUp>   :call comfortable_motion#flick(-20)<CR>

" vim-autoclose
let g:autoclose_vim_commentmode = 1

" indentLine
let g:indentLine_color_term = 8
let g:indentLine_char = '¦'
let g:indentLine_fileTypeExclude = ['tex', 'markdown']

" Filetype specific indentation.
filetype plugin indent on " Enable filetype plugins
autocmd FileType c setlocal shiftwidth=2 tabstop=2
autocmd FileType cpp setlocal shiftwidth=2 tabstop=2
autocmd FileType json setlocal shiftwidth=4 tabstop=4
autocmd FileType python setlocal shiftwidth=4 tabstop=4
autocmd FileType gitconfig setlocal shiftwidth=8 tabstop=8 noexpandtab
autocmd Filetype gitcommit setlocal spell textwidth=72

" Cursor fix
hi CursorLineNr term=bold cterm=bold ctermfg=012 gui=bold
