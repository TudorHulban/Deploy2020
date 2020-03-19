# VIM: First Steps
## Settings for user
```bash
vi ~/.vimrc
# add
set number
syntax on
colo darkblue # available on most OSs, desert if available
```
## Install plugin manager
```bash
wget https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
mkdir -p ~/.vim/autoload
mv plug.vim ~/.vim/autoload
```
append to .vimrc:
```bash
call plug#begin('~/.vim/plugged')
" Install ansible plugin 
Plug 'pearofducks/ansible-vim'
" Make vim pretty with nova-vim
Plug 'sheerun/vim-polyglot'
Plug 'trevordmiller/nova-vim'
call plug#end()
```
## Install plugins
```bash
vim
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
