set background=dark
colorscheme solarized

set autoread   " File changed on disk? Show the latest file

" Formatting
syntax enable
set encoding=utf-8
set nocompatible 
set number
set autoindent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set nowrap
set showbreak=↪

" Search
set hlsearch
set incsearch
set ignorecase
set smartcase

" Relative Line Numbers
set rnu
au BufEnter * :set rnu
au BufLeave * :set nu
au WinEnter * :set rnu
au WinLeave * :set nu
au InsertEnter * :set nu
au InsertLeave * :set rnu
au FocusLost * :set nu
au FocusGained * :set rnu

" Powerline settings
set laststatus=2   " Always show the statusline
let g:Powerline_symbols = 'fancy'

" Plugin Mappings
nnoremap <C-n> :NERDTreeToggle<CR>
inoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-n> :CommandT<CR>
inoremap <C-n> :CommandT<CR>

" Disable Arrow Keys - Use hjkl keys for movement
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Tab for Autocomplete
function! Tab_Or_Complete()
	if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
  	return "\<C-N>"
  else
 		return "\<Tab>"
 	endif
 endfunction
 inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
