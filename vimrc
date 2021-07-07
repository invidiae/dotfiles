" ███╗   ██╗███████╗ ██████╗   ██╗   ██╗██╗███╗   ███╗
" ████╗  ██║██╔════╝██╔═══██╗  ██║   ██║██║████╗ ████║
" ██╔██╗ ██║█████╗  ██║   ██║  ██║   ██║██║██╔████╔██║
" ██║╚██╗██║██╔══╝  ██║   ██║  ╚██╗ ██╔╝██║██║╚██╔╝██║
" ██║ ╚████║███████╗╚██████╔╝   ╚████╔╝ ██║██║ ╚═╝ ██║
" ╚═╝  ╚═══╝╚══════╝ ╚═════╝     ╚═══╝  ╚═╝╚═╝     ╚═╝

"------------------------------------------------------
call plug#begin('~/.local/share/nvim/plugged')
"Theme
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kyazdani42/nvim-web-devicons'


Plug 'tpope/vim-surround'
Plug 'preservim/nerdtree'
Plug 'folke/which-key.nvim'

Plug 'mechatroner/rainbow_csv'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'shaunsingh/nord.nvim'


Plug 'ryanoasis/vim-devicons'

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

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
set noshowmode


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
nnoremap <C-o> :Telescope find_files<CR>
nnoremap <C-f> :NERDTreeToggle<CR>
noremap <expr> j (v:count? 'j' : 'gj')
noremap <expr> k (v:count? 'k' : 'gk')

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
let g:vimwiki_list = [{'path': '~/Notes/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

nmap <C><F8> <Plug>VimwikiNextLink
nmap <C><F7> <Plug>VimwikiPrevLink

nnoremap <silent> <tab> :w <CR>:bnext<CR>

let FZF_DEFAULT_COMMAND='rg --files --hidden -g "!.git" '
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<s-tab>'


let g:startify_files_number = 6

let g:startify_bookmarks = [
		\ '~/Notes/Home.md',
		\ '~/.vimrc',
		\ '~/.config/bspwm/bspwmrc',
		\ '~/.config/sxhkd/sxhkdrc']
let g:startify_lists = [
		\ { 'type': 'bookmarks', 'header': ['   Bookmarks']},
		\ { 'type': 'files',     'header': ['   Recent Files']}]
let g:startify_custom_header = [
		\"   ███╗░░██╗███████╗░█████╗░██╗░░░██╗██╗███╗░░░███╗ ",
		\"   ████╗░██║██╔════╝██╔══██╗██║░░░██║██║████╗░████║ ",
		\"   ██╔██╗██║█████╗░░██║░░██║╚██╗░██╔╝██║██╔████╔██║ ",
		\"   ██║╚████║██╔══╝░░██║░░██║░╚████╔╝░██║██║╚██╔╝██║ ",
		\"   ██║░╚███║███████╗╚█████╔╝░░╚██╔╝░░██║██║░╚═╝░██║ ",
		\"   ╚═╝░░╚══╝╚══════╝░╚════╝░░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝ "]

let g:airline_theme = 'base16_nord'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_powerline_fonts = 1
