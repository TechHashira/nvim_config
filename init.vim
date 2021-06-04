set number
set relativenumber
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax on
set cursorline
set encoding=utf-8
set noshowmode

call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Themes
Plug 'morhetz/gruvbox'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'nanotech/jellybeans.vim'
Plug 'ghifarit53/tokyonight-vim'
"highligh syntax
Plug 'pangloss/vim-javascript'
" Tree
Plug 'scrooloose/nerdtree'
"Typing
Plug 'christoomey/vim-tmux-navigator'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'scrooloose/nerdcommenter'
call plug#end()
let mapleader=" "



nnoremap <Leader>x :!node %<cr>

nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>

" plugs
map <Leader>nt :NERDTreeFind<CR>
nmap <C-n> :NERDTreeToggle<CR>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

let g:NERDTreeIgnore = ['^node_modules$']


"let g:airline_theme = 'powerlineish'
let g:airline_powerline_fonts = 1
" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [[ <Plug>(coc-diagnostic-prev)
nmap <silent> ]] <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)
nmap <leader>fq  <Plug>(coc-fix-current)
"" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Check if backspace was just pressed      
function! s:check_back_space() abort                    
  let col = col('.') - 1    
  return !col || getline('.')[col - 1]  =~# '\s'    
endfunction   
" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction
nmap <C-P> :FZF<CR>
let NERDTreeQuitOnOpen=1
set termguicolors

colorscheme gruvbox
