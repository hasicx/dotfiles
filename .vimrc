" -----------------------------------------------------------------------------
" Color settings
" -----------------------------------------------------------------------------

" Enable 24-bit true colors if your terminal supports it.
if (has("termguicolors"))
  " https://github.com/vim/vim/issues/993#issuecomment-255651605
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

  set termguicolors
endif

syntax on

" -----------------------------------------------------------------------------
" Basic Settings
"   Research any of these by running :help <setting>
" -----------------------------------------------------------------------------

set clipboard=unnamedplus
set showcmd

" Tab space width
set softtabstop=4
set tabstop=4

" Linenumbers
set number

" Fast scrolling
set ttyfast

" Utf-8 encoding
set encoding=utf-8

" -----------------------------------------------------------------------------
" Basic mappings
" -----------------------------------------------------------------------------

" Seamlessly treat visual lines as actual lines when moving around.
noremap j gj
noremap k gk
noremap <Down> gj
noremap <Up> gk
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

" Prevent x from overriding what's in the clipboard.
noremap x "_x

" Keep cursor at the bottom of the visual selection after you yank it.
vmap y ygv<Esc>
