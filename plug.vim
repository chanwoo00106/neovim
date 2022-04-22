if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons' " icon
Plug 'Raimondi/delimitMate' " 괄호 설정
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'andweeb/presence.nvim'
Plug 'dsznajder/vscode-es7-javascript-react-snippets', { 'do': 'yarn install --frozen-lockfile && yarn compile' }
Plug 'alvan/vim-closetag'
Plug 'pantharshit00/vim-prisma'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'evanleck/vim-svelte', {'branch': 'main'}
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ekalinin/Dockerfile.vim'
Plug 'iamcco/coc-tailwindcss',  {'do': 'yarn install --frozen-lockfile && yarn run build'}

if has("nvim")
  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'folke/lsp-colors.nvim'
  Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
  Plug 'windwp/nvim-ts-autotag'
endif

Plug 'groenewege/vim-less', { 'for': 'less' }

call plug#end()

" delimitMate
let delimitMate_expand_cr=1

" Nerdtree
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
let NERDTreeShowHidden=1

" airline
let g:airline#extensions#branch#vcs_checks = []
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme="atomic"

" discord
let g:presence_auto_update         = 1
let g:presence_neovim_image_text   = "Neovim이 최고야"
let g:presence_main_image          = "neovim"
let g:presence_client_id           = "793271441293967371"
let g:presence_debounce_timeout    = 10
let g:presence_enable_line_number  = 0
let g:presence_blacklist           = []
let g:presence_buttons             = 1

let g:presence_editing_text        = "Editing %s"
let g:presence_file_explorer_text  = "Browsing %s"
let g:presence_git_commit_text     = "Committing changes"
let g:presence_plugin_manager_text = "Managing plugins"
let g:presence_reading_text        = "Reading %s"
let g:presence_workspace_text      = "Working on %s"
let g:presence_line_number_text    = "Line %s out of %s"

" Prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" Coc
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" closetag
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.erb,*.jsx,*.tsx,*.ejs"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.erb'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_shortcut = '>'
let g:closetag_close_shortcut = '<leader>>'

" svelte
let g:svelte_indent_script = 0
let g:svelte_indent_style = 0
let g:svelte_preprocessors = ['typescript']

" ctrlp
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe
