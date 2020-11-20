noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
nnoremap <C-k> :tabprev<CR>
nnoremap <C-j> :tabnext<CR>
nnoremap <C-w> :close<CR>
set hidden
nnoremap <F5> :buffers<CR>:buffer<Space>
" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"


" SPLITS
set splitbelow " open a new vertical split below
set splitright " open a new horizontal split on the right
set fillchars=vert:│ " Vertical separator between windows"
set number! 
" Navigate splits
nnoremap <C-h> <C-w>h " Ctrl + h to move to the left split
nnoremap <C-l> <C-w>l " Ctrl + l to move to the right one
autocmd BufWritePre *.js Neoformat

call plug#begin('~/.vim/plugged')
" Collection of color schemes
Plug 'rafi/awesome-vim-colorschemes'
Plug 'dikiaap/minimalist'
Plug 'ap/vim-buftabline'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'sbdchd/neoformat'

" Plug 'roman/golden-ratio' " Auto-expands current spli:t
Plug 'wellle/targets.vim'
Plug 'scrooloose/nerdtree'
Plug 'cloudhead/neovim-fuzzy'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'tomasiser/vim-code-dark'

Plug 'kristijanhusak/vim-js-file-import', {'do': 'npm install'}
Plug 'epilande/vim-react-snippets'



call plug#end()


" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
" ===========
" NERDTree
" ===========
let NERDTreeShowHidden=1 " Always show dot (hidden) files
imap <C-l> <Plug>(coc-snippets-expand)
" let NERDTreeQuitOnOpen=1 " Close the NERDTree after opening a file
" map <Leader>n :NERDTreeFind<CR> " Leader + n to open the NT
map <C-n> :NERDTreeToggle<CR>


colorscheme onedark
" colorscheme oceanic_material

nnoremap <C-p> :Files<CR>
verbose imap <tab>
" SNIPPETS
imap <C-l> <Plug>(coc-snippets-expand)
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'
let g:python3_host_prog = $GLOBALINSTALLDIR . "/apps/nvim-py3/bin/python3"


