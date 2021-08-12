set number relativenumber
set termguicolors
set nu rnu
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
call plug#end()
" keymaps 

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


nnoremap ; :
cnoremap q1 q!
imap kj <Esc>
imap jk <Esc>
nmap j gj
nmap k gk
verbose imap <tab>
" tab mapping for completion 

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

" Filetype specific patterns to match
" entry value must be comma seperated list
let g:Hexokinase_ftOptInPatterns = {
\     'css': 'full_hex,rgb,rgba,hsl,hsla,colour_names',
\     'html': 'full_hex,rgb,rgba,hsl,hsla,colour_names'
\ }
