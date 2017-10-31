" Example Vim configuration.
" Copy or symlink to ~/.vimrc or ~/_vimrc.

set termguicolors

set nocompatible                  " Must come first because it changes other options.

" 256-color terminal

syntax enable                     " Turn on syntax highlighting.
filetype plugin indent on         " Turn on file type detection.

runtime macros/matchit.vim        " Load the matchit plugin.

set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.

set backspace=indent,eol,start    " Intuitive backspacing.

set hidden                        " Handle multiple buffers better.

set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest,full    " Complete files like a shell.

set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.

set number                        " Show line numbers.
set ruler                         " Show cursor position.

set incsearch                     " Highlight matches as you type.
set nohlsearch                      " Highlight matches.

set nowrap                          " Turn on line wrapping.
set scrolloff=3                   " Show 3 lines of context around the cursor.

set title                         " Set the terminal's title

set visualbell                    " No beeping.

set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.

set undodir=~/.vim/.undo//

set backupdir=~/.vim/.backup//

set directory=~/.vim/.swp//

let g:airline_theme='luna'

set backupcopy=yes

" UNCOMMENT TO USE
set softtabstop=2                    " Global tab width.
set shiftwidth=2                 " And again, related.
set expandtab                    " Use spaces instead of tabs

set laststatus=2                  " Show the status line all the time
" Useful status information at bottom of screen
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_concepts_highlight = 1
" Or use vividchalk
colorscheme monokai-phoenix

" Tab mappings.
map <leader>tt :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tabmove

" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.config/nvim/plugged')

Plug 'https://github.com/Quramy/tsuquyomi.git'

Plug 'scrooloose/nerdtree'

"Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'mileszs/ack.vim'

Plug 'https://github.com/pangloss/vim-javascript.git'

Plug 'tpope/vim-fugitive'

Plug 'https://github.com/tpope/vim-git.git'

Plug 'git://github.com/tpope/vim-surround.git'

Plug 'mattn/emmet-vim'

Plug 'git://github.com/tpope/vim-commentary.git'

Plug 'mxw/vim-jsx'

Plug 'https://github.com/leshill/vim-json.git'

Plug 'Valloric/YouCompleteMe'

Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'

Plug 'https://github.com/danro/rename.vim.git'

Plug 'https://github.com/elzr/vim-json.git'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'octol/vim-cpp-enhanced-highlight'

Plug 'w0rp/ale'

" Initialize plugin system
call plug#end()

" Uncomment to use Jamis Buck's file opening plugin
" map <Leader>t :FuzzyFinderTextMate<Enter>
set runtimepath^=~/.config/nvim/bundle/ctrlp.vim

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
" Controversial...swap colon and semicolon for easier commands
"nnoremap ; :
"nnoremap : ;

"vnoremap ; :
"vnoremap : ;

" Automatic fold settings for specific files. Uncomment to use.
" autocmd FileType ruby setlocal foldmethod=syntax
" autocmd FileType css  setlocal foldmethod=indent shiftwidth=2 tabstop=2

"folding
set foldmethod=syntax
set foldlevel=20

"javaScript
let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0

"enable keyboard shortcuts
let g:tern_map_keys=1
"show argument hints
let g:tern_show_argument_hints='on_hold'
set completeopt-=preview

" Give a shortcut key to NERD Tree
map <F8> :NERDTreeToggle<CR>
