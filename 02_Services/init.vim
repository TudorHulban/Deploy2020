  syntax on                                                                                                    
  set number relativenumber
  set cursorline
  set foldlevel=0
  set history=500
  set title
  
  " Shortcuts 
  nmap <C-n> :NERDTreeToggle<CR>
   
  let g:VIM_PLUG_PATH = expand(stdpath('config') . '/autoload/plug.vim')
  let g:PLUGIN_HOME = expand(stdpath('config') . '/nvim')
  
  call plug#begin(g:PLUGIN_HOME)
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'mattn/emmet-vim'
  
  Plug 'vim-airline/vim-airline'
  Plug 'prettier/vim-prettier', { 'do': 'npm install' } 
  
  Plug 'sheerun/vim-polyglot'
  Plug 'itchyny/vim-highlighturl'
  Plug 'scrooloose/nerdTree'
  Plug 'sainnhe/vim-color-desert-night'
  call plug#end()
  
  " when running at every change you may want to disable quickfix
  let g:prettier#quickfix_enabled = 0
  let g:prettier#autoformat = 0
  autocmd BufWritePre,TextChanged,InsertLeave *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync 

  let g:deoplete#enable_at_startup = 1
  let g:user_emmet_expandabbr_key = '<C-a>,' 
  
  colo desert-night
