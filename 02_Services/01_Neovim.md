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

## General additions
### Tree File Explorer
Adding Ctrl+n shortcut.<br/>
Toggle panel with `Ctrl+w` or `Ctrl+w+h/l` for navigation.

```bash
" Nerdtree – Tree File Explorer "
nmap <C-n> :NERDTreeToggle<CR>
Plug 'scrooloose/nerdTree'
```
#### Resources
```
https://github.com/preservim/nerdtree
https://stackoverflow.com/questions/4446062/two-basic-questions-with-nerdtree-switching-windows-and-finding-files
```

### URL Highlighter
```bash
" URL Highlighter "
Plug 'itchyny/vim-highlighturl'
```

## Additions for Golang


## Additions for Javascript
### Emmet
Switch completion based on configured key.
```bash
" Emmet "
let g:user_emmet_expandabbr_key = ',,'
Plug 'mattn/emmet-vim'
```

#### Test
Open new file and type:
```
html:5
```
Exit insert mode and press Ctrl+y+comma.

#### Resources
```
https://www.youtube.com/watch?v=ha7oyvhgP04
```

### Prettier
Dependency: npm.<br/>
Simple install:
```bash
" Prettier "
Plug 'prettier/vim-prettier', { 'do': 'npm install' }
```

With selection of file types:
```bash
" Prettier "
let g:prettier#config#parser = 'babylon'
Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
```

#### Test


#### Resources
```html
https://github.com/prettier/vim-prettier
```


## Plugin configuration for Peppermint OS
```bash
" Set plugin configuration "
let g:VIM_PLUG_PATH =  './autoload/plug.vim'  
let g:PLUGIN_HOME =  './nvim' 
```

## Sample configuration
```bash
  " Shortcuts "
  call plug#begin(g:PLUGIN_HOME)
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  
  " when running at every change you may want to disable quickfix "
  let g:prettier#quickfix_enabled = 0
  
  let g:prettier#autoformat = 0
  autocmd BufWritePre,TextChanged,InsertLeave *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync
  
  Plug 'sheerun/vim-polyglot'
  

  Plug 'dense-analysis/ale'

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
