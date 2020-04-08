call plug#begin()
Plug 'rust-lang/rust.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'preservim/nerdtree'
" Plug 'autozimu/LanguageClient-neovim', {
    " \ 'branch': 'next',
    " \ 'do': 'bash install.sh',
    " \ }
Plug 'itchyny/lightline.vim'
Plug 'airblade/vim-gitgutter'
Plug 'preservim/nerdcommenter'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
call plug#end()
" let g:LanguageClient_serverCommands = {
    " \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
    " \ }
let g:coc_node_path = "/usr/bin/node"
let g:coc_global_extensions = [
                        \'coc-rls',
                        \'coc-snippets',
]
set nocompatible

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
" Remap for rename current word
nmap <F2> <Plug>(coc-rename)

set termguicolors
set mouse=a
set number relativenumber
set autoindent
set encoding=utf-8
" Always draw sign column. Prevent buffer moving when adding/deleting sign.
set signcolumn=yes
set colorcolumn=80 " and give me a colored column
set hidden " Allows you to switch buffers without saving current
let g:rustfmt_autosave = 1

let g:lightline = {
      \ 'colorscheme': 'one',
      \ }

colorscheme dracula
map <C-n> :NERDTreeToggle<CR>
let g:NERDSpaceDelims = 1
" Jump to start and end of line using the home row keys
nnoremap H <nop>
nnoremap L <nop>
nnoremap H ^
nnoremap L $
nmap <CR> O<Esc>j
" nmap <CR> o<Esc>k
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
