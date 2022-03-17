" cSpell:disable
set ts=4 sts=4 sw=4 noexpandtab
set showbreak=↪\ 
set listchars=tab:→\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨
set list
set number relativenumber
set termguicolors
set nu rnu
let g:airline_theme = 'minimalist'
let g:python3_host_prog='/usr/bin/python3'
" init.vim
call plug#begin('~/.config/nvim/plugged')
Plug 'dracula/vim', { 'as': 'dracula' } 
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'mhinz/vim-startify'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'kdheepak/lazygit.nvim'
Plug 'tpope/vim-fugitive'
Plug 'kristijanhusak/orgmode.nvim'
Plug 'tpope/vim-surround'
Plug 'github/copilot.vim'
call plug#end()
" keymaps 
" Do default action for previous item.
no <down> <Nop>
no <left> <Nop>
no <right> <Nop>
no <down> <Nop>
no <up> <Nop>
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <down> <Nop>
ino <up> <Nop>
vno <down> <Nop>
vno <left> <Nop>
vno <right> <Nop>
vno <down> <Nop>
vno <up> <Nop>
" Use the same symbols as TextMate for tabstops and EOLs
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
				\: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
no <tab> :bnext<CR>
nnoremap ; :
cnoremap q1 q!
imap kj <Esc>
imap jk <Esc>
nmap j gj
nmap k gk
nmap <C-w> :bd<CR>
" tab mapping for completion 
" enable tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
set showtabline=2
vmap <leader>a <Plug>(coc-codeaction-selected)
nmap <leader>a <Plug>(coc-codeaction-selected)
" color scheme
colorscheme gruvbox
nnoremap <C-n> :NERDTreeToggle<CR>
let g:Hexokinase_highlighters = [ 'backgroundfull' ]

let g:Hexokinase_optInPatterns = 'full_hex,rgb,rgba,hsl,hsla,colour_names'

" All possible values
let g:Hexokinase_optInPatterns = [
\     'full_hex',
\     'triple_hex',
\     'rgb',
\     'rgba',
\     'hsl',
\     'hsla',
\     'colour_names'
\ ]

highlight NonText guifg=#4a4a59
" Filetype specific patterns to match
" entry value must be comma seperated list
let g:Hexokinase_ftOptInPatterns = {
\     'css': 'full_hex,rgb,rgba,hsl,hsla,colour_names',
\     'html': 'full_hex,rgb,rgba,hsl,hsla,colour_names'
\ }

set noshowmode
highlight SpecialKey guifg=#4a4a59
" init.vim
lua << EOF
require('orgmode').setup({
  org_agenda_files = {'~/orgs/*' },
})
EOF
