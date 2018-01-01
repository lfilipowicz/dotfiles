call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'arcticicestudio/nord-vim'
Plug 'w0rp/ale'
Plug 'vim-airline/vim-airline'
Plug 'chriskempson/tomorrow-theme'
Plug 'rakr/vim-one'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown'] }
Plug 'pangloss/vim-javascript'
Plug 'leshill/vim-json'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'wokalski/autocomplete-flow'
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
 call plug#end()


autocmd vimenter * NERDTree
syntax on
set background=dark        " for the light version
let g:one_allow_italics = 1 " I love italic for comments
let g:javascript_plugin_flow = 1
let g:deoplete#enable_at_startup = 1
let g:airline#extensions#ale#enabled = 1
let g:jsx_ext_required = 0
colorscheme one
let g:airline_theme='one'
set hlsearch
set number
