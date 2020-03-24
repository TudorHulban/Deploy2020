# Neovim: Configuration
## User settings
```bash
:checkhealth
# file name : init.vim
# file path ~/.config/nvim/init.vim
```
## Plugin install
**Git** (sudo apt install git) needed as dependency.
```vim
mkdir -p ~/.config/nvim/autoload
cd ~/.config/nvim/autoload
wget https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# in nvim, :PlugInstall and :PlugStatus to install and check on plugins. 
```
## Minimal Configuration
```bash
syntax on
set number

let g:VIM_PLUG_PATH = expand(stdpath('config') . '/autoload/plug.vim')
let g:PLUGIN_HOME = expand(stdpath('config') . '/nvim')

call plug#begin(g:PLUGIN_HOME)
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()
```
## Sample configuration
```bash
  syntax on                                                                                                    
  set number relativenumber
  set cursorline
  "set colorcolumn=80
  
  set foldlevel=0
  set history=500
  set title
  
  " Shortcuts 
  nmap <C-n> :NERDTreeToggle<CR>
  nmap <C-a> :user_emmet_expandabbr_key<CR>
  
  let g:user_emmet_expandabbr_key = '<C-a>,'
  
  let g:VIM_PLUG_PATH = expand(stdpath('config') . '/autoload/plug.vim')
  # for peppermint
  # let g:VIM_PLUG_PATH =  './autoload/plug.vim'  
  let g:PLUGIN_HOME = expand(stdpath('config') . '/nvim')
  # for peppermint
  # let g:PLUGIN_HOME =  './nvim'  
  
  call plug#begin(g:PLUGIN_HOME)
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  
  Plug 'prettier/vim-prettier', { 'do': 'npm install' }
  " when running at every change you may want to disable quickfix
  let g:prettier#quickfix_enabled = 0
  
  let g:prettier#autoformat = 0
  autocmd BufWritePre,TextChanged,InsertLeave *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync
  
  Plug 'sheerun/vim-polyglot'
  Plug 'itchyny/vim-highlighturl'
  Plug 'scrooloose/nerdTree'
  Plug 'dense-analysis/ale'
  Plug 'mattn/emmet-vim'
  
  Plug 'tomasiser/vim-code-dark'
  call plug#end()
  
  " Airline (powerline)
  "let g:airline_powerline_fonts = 1
  "let g:airline_theme='violet'
  
  " ALE Section
  " Fix files automatically on save
  let g:ale_fix_on_save = 1
  let g:ale_completion_enabled = 1
  let g:ale_sign_error = '>>'
  let g:ale_sign_warning = '--'
  let g:ale_fixers = {'*': ['remove_trailing_lines', 'trim_whitespace'], 'javascript': ['eslint'], }
  let g:ale_sign_column_always = 1
  
  colorscheme codedark
```
#### Resources
```bash
https://devtechnica.com/vim-neovim/best-neovim-plugins-for-software-development-in-2019
https://www.gregjs.com/vim/2016/neovim-deoplete-jspc-ultisnips-and-tern-a-config-for-kickass-autocompletion/
http://learnvimscriptthehardway.stevelosh.com/
```
