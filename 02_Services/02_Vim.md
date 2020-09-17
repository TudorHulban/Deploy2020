# VIM First Steps
See more detailed information in [Neovim](NEOVIM.md) setup.

## Settings for user
Configure settings in settings file:
```bash
vi ~/.vimrc
# add
set number
syntax on
```

## Install plugin manager
```bash
mkdir -p ~/.vim/autoload
cd  ~/.vim/autoload
wget https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

## Load Plugins
Append to .vimrc:
```bash
call plug#begin('~/.vim/plugged')
" Install ansible plugin "
Plug 'pearofducks/ansible-vim'

Plug 'sheerun/vim-polyglot'
call plug#end()
```
### Plugins management
```bash
:PlugStatus
:PlugInstall
:PlugUpdate
:PlugUpgrade
```
## How To
### Delete multiple lines
```bash
:[start_line_no],[end_line_no]d
```

### Delete all lines
```bash
:1,$d
```

### Tabs

