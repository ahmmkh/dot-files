set number relativenumber
set nu rnu
call plug#begin('~/.config/nvim/plugged')
Plug 'dracula/vim', { 'as': 'dracula' } 
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'morhetz/gruvbox'
call plug#end()
nnoremap ; :
cnoremap q1 q!
colorscheme gruvbox
nnoremap <C-n> :NERDTreeToggle<CR>
