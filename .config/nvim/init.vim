call plug#begin()
Plug 'rust-lang/rust.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'preservim/nerdtree'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'itchyny/lightline.vim'
Plug 'airblade/vim-gitgutter'
Plug 'preservim/nerdcommenter'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
call plug#end()
let g:LanguageClient_serverCommands = {
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
    \ }

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
let g:LanguageClient_diagnosticsEnable = 0
let g:LanguageClient_changeThrottle = 0.1
" let g:racer_experimental_completer = 1
let g:lightline = {
      \ 'colorscheme': 'one',
      \ }
" set completefunc=LanguageClient#complete
nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" Or map each action separately
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
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
