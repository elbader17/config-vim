"config
syntax on
set number

set mouse=a
set noerrorbells
set sw=2
set expandtab
set smartindent
set rnu
set numberwidth=1
set nowrap
set noswapfile
set incsearch
set ignorecase
set clipboard=unnamedplus
set encoding=utf-8
set cursorline
set termguicolors
set ignorecase
let NERDTreeShowHidden=1
"plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'Wutzara/vim-materialtheme'
Plug 'zxqfl/tabnine-vim'
Plug 'preservim/nerdtree'
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
Plug 'sheerun/vim-polyglot'
Plug 'arcticicestudio/nord-vim'
Plug 'itchyny/lightline.vim'
Plug 'maximbaz/lightline-ale'
Plug 'bluz71/vim-nightfly-guicolors'
Plug 'frenzyexists/aquarium-vim', { 'branch': 'develop' }
Plug 'mhartington/oceanic-next'
Plug 'scrooloose/syntastic'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'Rigellute/rigel'
Plug 'connorholyday/vim-snazzy'
Plug 'zacanger/angr.vim'
Plug 'eslint/eslint'

call plug#end()

"Theme

"set background=dark
"colorscheme materialtheme

"colorscheme nord
"set background=dark

"colorscheme nightfly

"colorscheme aquarium
"set background=dark

" let g:oceanic_next_terminal_bold = 1
" let g:oceanic_next_terminal_italic = 1
" colorscheme OceanicNext

" set termguicolors
" syntax enable
" colorscheme rigel

" set termguicolors
" colorscheme bat

" colorscheme snazzy

set background=dark
colorscheme angr

"config
let mapleader = " "


noremap <leader>w :w<CR>
noremap <leader>q :q<CR>
noremap <leader>s :source %<CR>
noremap <leader>c :close<<CR>
noremap <Leader>z <C-w>
noremap <Leader>h <<C-w>
noremap <Leader>l ><C-w>
noremap Ñ oconsole.log('test')<C-c>
noremap ñ oconsole.log()<Left>
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <Leader>p :PrettierAsync<CR>


" Git 

noremap <leader>ga :G add .<CR>
noremap <leader>gc :G commit -m ""<Left>
noremap <leader>gC  ga:G commit -m ""<Left>
noremap <leader>gb :G branch<CR>
noremap <leader>gf :G fetch<CR>
noremap <leader>gm :G merge<CR>
noremap <leader>gd :G diff<CR>
noremap <leader>gpl :G pull origin  
noremap <leader>gpll :G pull origin main <CR> 
noremap <leader>gs :G status <CR>
noremap <leader>gg :G 
noremap <leader>gl :G log<CR>
noremap <leader>gpS :G push origin 
noremap <leader>gps :G push origin main <CR> 

" FZF

noremap <leader>ff :Files <CR>
noremap <leader>fF :Files! <CR>

" HTML5

noremap <leader>tp o<p></p><C-c><Left><Left><Left>
noremap <leader>td o<div class=""></div><C-c><Left><Left><Left><Left><Left>

" Copilot

noremap <leader>cp :Copilot panel<CR>

" debug

noremap <leader>d odebuger<C-c>
