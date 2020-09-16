# Neovim: Configuration

## Check health
```bash
:checkhealth
```

## Create user settings folders and files
```bash
mkdir -p ~/.config/nvim/autoload
touch ~/.config/nvim/init.vim
```

## Plugin install
Git needed as dependency (sudo apt install git).

```bash
cd ~/.config/nvim/autoload
wget https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
Use :PlugInstall and :PlugStatus to install and check on plugins. 

## Minimal Configuration
Tested on Debian.

```bash
syntax on
set cursorline
set number relativenumber
set colorcolumn=130  
set title
set foldlevel=0
set history=500

" Set plugin configuration "
let g:VIM_PLUG_PATH = expand(stdpath('config') . '/autoload/plug.vim')
let g:PLUGIN_HOME = expand(stdpath('config') . '/nvim')

" Load Plugins "    
call plug#begin(g:PLUGIN_HOME)
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()
```

## Improved visuals
Add before plugin end.

Violet theme:
```bash
" Airline (powerline) "
let g:airline_powerline_fonts = 1
let g:airline_theme='violet'
```

Dark theme:
```bash
" Airline (powerline) "
let g:airline_theme='codedark'
```

## Additions for Golang


## Additions for Javascript

## Plugin configuration for Peppermint OS
```bash
" Set plugin configuration "
let g:VIM_PLUG_PATH =  './autoload/plug.vim'  
let g:PLUGIN_HOME =  './nvim' 
```
## Sample configuration
```bash
  " Shortcuts "
  nmap <C-n> :NERDTreeToggle<CR>
  nmap <C-a> :user_emmet_expandabbr_key<CR>
  
  let g:user_emmet_expandabbr_key = '<C-a>,'
  
  call plug#begin(g:PLUGIN_HOME)
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  
  Plug 'prettier/vim-prettier', { 'do': 'npm install' }
  " when running at every change you may want to disable quickfix "
  let g:prettier#quickfix_enabled = 0
  
  let g:prettier#autoformat = 0
  autocmd BufWritePre,TextChanged,InsertLeave *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync
  
  Plug 'sheerun/vim-polyglot'
  Plug 'itchyny/vim-highlighturl'
  Plug 'scrooloose/nerdTree'
  Plug 'dense-analysis/ale'
  Plug 'mattn/emmet-vim'
  
  call plug#end()
  
  " ALE Section "
  " Fix files automatically on save "
  let g:ale_fix_on_save = 1
  let g:ale_completion_enabled = 1
  let g:ale_sign_error = '>>'
  let g:ale_sign_warning = '--'
  let g:ale_fixers = {'*': ['remove_trailing_lines', 'trim_whitespace'], 'javascript': ['eslint'], }
  let g:ale_sign_column_always = 1
  
  
```
## Resources
```bash
https://devtechnica.com/vim-neovim/best-neovim-plugins-for-software-development-in-2019
https://www.gregjs.com/vim/2016/neovim-deoplete-jspc-ultisnips-and-tern-a-config-for-kickass-autocompletion/
http://learnvimscriptthehardway.stevelosh.com/
```
