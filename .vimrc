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

" NERDTree Toggle - Map to F2
map <F2> :NERDTreeToggle<CR>

" Disable Arrow Keys - Use hjkl keys for movement
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
