set number
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set mouse=a
set encoding=UTF-8

call plug#begin()

Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/vim-airline/vim-airline-themes' "Status bar themes

Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme

Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons https://aur.archlinux.org/nerd-fonts-complete.git for the icon
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal

Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation

Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
call plug#end()


"--------------------------------------------------------"
"CTRL-C CTRL-V CTRL-Z SHIFT-CTRL-Z

vnoremap <C-z> <nop>
vmap <C-c> "+y^ i
vmap <C-x> di

nnoremap <C-z> <nop>
nnoremap i i<Right>

inoremap <C-v> <esc>pi<Right>

inoremap <C-q> <esc>v 
inoremap <C-z> <esc>ui<Right>
inoremap <C-r> <esc><C-r>i<Right>
inoremap <C-c> <nop>
inoremap <C-a> <esc>ggVG


"--------------------------------------------------------"

set completeopt-=preview " For No Previews
colorscheme challenger_deep
"-------------------------------------------------------"
" airline 

" & for preview page , é for next page, à close page
nnoremap <Char-38> :bp<cr>
nnoremap é :bn<cr>
nnoremap à :bd<cr> 

let g:airline_theme='onedark'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#switch_buffers_and_tabs = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
"--------------------------------------------------------"


nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"





"--------------------------------------------------------"
" 

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif



"--------------------------------------------------------"
