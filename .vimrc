set background=dark
colorscheme solarized

" Formatting
syntax enable
set number
set tabstop=2
set shiftwidth=2
set autoindent

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

" Plugin Mappings
map <C-n> :NERDTreeToggle<CR>
nmap <C-t> :TagbarToggle<CR>

" Disable Arrow Keys - Use hjkl keys for movement
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
