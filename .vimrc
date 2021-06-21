" ███╗   ██╗███████╗ ██████╗   ██╗   ██╗██╗███╗   ███╗
" ████╗  ██║██╔════╝██╔═══██╗  ██║   ██║██║████╗ ████║
" ██╔██╗ ██║█████╗  ██║   ██║  ██║   ██║██║██╔████╔██║
" ██║╚██╗██║██╔══╝  ██║   ██║  ╚██╗ ██╔╝██║██║╚██╔╝██║
" ██║ ╚████║███████╗╚██████╔╝   ╚████╔╝ ██║██║ ╚═╝ ██║
" ╚═╝  ╚═══╝╚══════╝ ╚═════╝     ╚═══╝  ╚═╝╚═╝     ╚═╝

"------------------------------------------------------
call plug#begin('~/.local/share/nvim/plugged')
"Theme
Plug 'joshdick/onedark.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-startify'
Plug 'tpope/vim-surround'
Plug 'mechatroner/rainbow_csv'
Plug 'preservim/nerdtree'
Plug 'folke/which-key.nvim'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'


Plug 'lervag/vimtex'
Plug 'vimwiki/vimwiki'
call plug#end()
"------------------------------------------------------


set clipboard=unnamedplus
syntax enable
set termguicolors
set background=dark
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set number relativenumber
set completeopt+=menuone
"set mouse=a
set wildmenu
set splitbelow splitright
set ignorecase


nmap H ^
nmap L $
nmap Y y$
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map + <C-w>+
map - <C-w>-
nnoremap <SPACE> <Nop>
nnoremap <C-o> :Files<CR>
nnoremap <C-f> :NERDTreeToggle<CR>
noremap <expr> j (v:count? 'j' : 'gj')
noremap <expr> k (v:count? 'k' : 'gk')

let g:airline#extensions#tabline#enabled = 1
let g:airline_symbols_ascii = 1

let g:latex_view_general_viewer = "zathura"
let g:vimtex_view_method = "zathura"
let g:vimtex_compiler_progname = 'nvr'
let g:tex_flavor = "latex"
let g:vimtex_quickfix_open_on_warning = 0
let g:vimtex_quickfix_mode = 2
let g:tex_conceal = ""
let g:vimtex_quickfix_latexlog = {
            \ 'default' : 1,
            \ 'fix_paths' : 0,
            \ 'general' : 1,
            \ 'references' : 1,
            \ 'overfull' : 1,
            \ 'underfull' : 1,
            \ 'font' : 1,
            \ 'packages' : {
            \   'default' : 1,
            \   'natbib' : 1,
            \   'biblatex' : 1,
            \   'babel' : 1,
            \   'hyperref' : 1,
            \   'scrreprt' : 1,
            \   'fixltx2e' : 1,
            \   'titlesec' : 1,
            \ },
            \}
colorscheme nord
let g:vimwiki_list = [{'path': '~/Notizen/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

nmap <C-Tab> <Plug>VimwikiNextLink
nmap <C><F7> <Plug>VimwikiNextLink

nnoremap <silent> <TAB> :w <CR>:bnext<CR>
nnoremap <silent> <S-TAB> :w <CR>:bprevious<CR>

let FZF_DEFAULT_COMMAND='rg --files --hidden -g "!.git" '
