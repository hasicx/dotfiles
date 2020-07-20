" ----------------------------------------------------------------------------
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
colorscheme tender

" -----------------------------------------------------------------------------
" Basic Settings
"   Research any of these by running :help <setting>
" -----------------------------------------------------------------------------

set clipboard=unnamedplus
set showcmd

" Show status bar.
set laststatus=2 

" Search while typing (don't wait for enter).
set incsearch

" Only do this part when compiled with support for autocommands.
if has("autocmd")
    " Use filetype detection and file-based automatic indenting.
    filetype plugin indent on

    " Use actual tab chars in Makefiles.
    autocmd FileType make set tabstop=8 shiftwidth=8 softtabstop=0 noexpandtab
endif " 

" For everything else, use a tab width of 4 space chars.
set tabstop=8       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.
set shiftwidth=4    " Indents will have a width of 4 (using > and <)
set softtabstop=4   " Sets the number of columns for a TAB.
set expandtab       " Expand TABs to spaces.

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

" Mappings for plugin wsl-copy
nmap <silent> <leader>y <Plug>WslCopy
xmap <silent> <leader>y <Plug>WslCopy

" Enable/disable paste-mode (no autoindent when pasting)
set pastetoggle=<leader>p
