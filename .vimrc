filetype plugin indent on 
syntax on 
set encoding=utf-8 
call plug#begin('~/.vim/plugged')
	Plug 'maralla/completor.vim'
	Plug 'SirVer/ultisnips'
	Plug 'honza/vim-snippets'
	Plug 'ervandew/supertab'
	Plug 'lifepillar/vim-solarized8'
	Plug 'vim-airline/vim-airline'
	Plug 'bling/vim-bufferline'
	Plug 'scrooloose/nerdtree'
	Plug 'OmniSharp/omnisharp-vim'
	Plug 'Shougo/vimproc.vim', {'do' : 'make'}
	Plug 'vim-syntastic/syntastic'
	Plug 'OrangeT/vim-csharp'
	Plug 'HerringtonDarkholme/yats.vim'
	Plug 'pangloss/vim-javascript'
call plug#end()

" set up completion settings
let g:OmniSharp_server_path = '/home/me/omnisharp/omnisharp.http-linux-x64/omnisharp/OmniSharp.exe'
let g:completor_clang_binary = '/usr/bin/clang'
let g:completor_python_binary = '/usr/bin/python3'
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"
let g:SuperTabDefaultCompletionType = "<c-n>"
let g:completor_auto_close_doc = 0

" Syntastic Settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" set up theme settings
set background=dark
colorscheme solarized8
let g:airline_solarized_bg='dark'
set cursorline
" set up some key bindings
" leader key aka 'windows key'
let mapleader = ' '
noremap <leader><right> <C-o><C-W>l
noremap <leader><left> <C-o><C-W>h
noremap <leader><up> <C-o><C-W>k
noremap <leader><down> <C-o><C-W>j
map <leader>n :NERDTreeToggle<CR>
noremap <leader><tab> :bnext<CR>
noremap <leader><S-tab> :bprevious<CR>
set number
