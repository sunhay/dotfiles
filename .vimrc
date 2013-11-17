syntax enable
let g:solarized_termtrans = 1   " Window transparency? Set to 1 if your terminal is transparent
set background=dark
colorscheme solarized

set autoread   " File changed on disk? Show the latest file

" Formatting
set encoding=utf-8
set nocompatible
set number
set autoindent
set tabstop=2
set shiftwidth=2
" set softtabstop=2
set expandtab
set backspace=indent,eol,start

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
  set hlsearch
endif

" Display extra whitespace
set list listchars=tab:»·,trail:·

" Automatically strip whitespace off the end of lines on save
autocmd BufWritePre *.py :%s/\s\+$//e
autocmd BufWritePre *.rb :%s/\s\+$//e
autocmd BufWritePre *.cpp :%s/\s\+$//e
autocmd BufWritePre *.java :%s/\s\+$//e
autocmd BufWritePre *.scala :%s/\s\+$//e

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
