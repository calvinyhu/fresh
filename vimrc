" Install Plug if not available
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" vim-plug Section
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Many vim color themes
Plug 'rafi/awesome-vim-colorschemes'

" Language pack for vim syntax coloring
Plug 'sheerun/vim-polyglot'

" Autocomplete
" USAGE: Run install.py
" Plug 'Valloric/YouCompleteMe'

" Toggle comments with 'gc'
" USAGE: gcc OR v<motion>gc
Plug 'tomtom/tcomment_vim'

" Show git repo line modifications
Plug 'airblade/vim-gitgutter'

" A light and configurable statusline/tabline plugin for Vim
Plug 'itchyny/lightline.vim'

" EasyMotion provides a much simpler way to use some motions in vim.
" Usage: <Leader><Leader>w OR \\w
Plug 'easymotion/vim-easymotion'

" Insert or delete brackets, parens, quotes in pairs
Plug 'jiangmiao/auto-pairs'

call plug#end()


" Other Plug Options
" Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
" If you're using tmux version 2.2 or later, you can remove the outermost
" $TMUX check and use tmux's 24-bit color support
" (see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more
" information.)
if (empty($TMUX))
    if (has("nvim"))
        " For Neovim 0.1.3 and 0.1.4 <
        " https://github.com/neovim/neovim/pull/2198 >
        let $NVIM_TUI_ENABLE_TRUE_COLOR=1
    endif
    if (has("termguicolors"))
        set termguicolors
    endif
endif


" Compatibility Settings
" Set character encoding
set encoding=utf-8
" Disable vi compatibility
set nocompatible


" Color Scheme Settings
syntax on
" Dark:
" OceanicNext, deus, one, onedark, minimalist
" Light:
" OceanicNextLight, hybrid_material
colorscheme OceanicNext


" Editor Settings
" Set line numbers
set number
" Set ruler
set colorcolumn=120
" Highlight line
set cursorline
" Set Indents 
set autoindent
set smartindent
" Set Tabs
" https://tedlogan.com/techblog3.html
set tabstop=4
set shiftwidth=4
set expandtab
" Configure backspace
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
" Disable beeps
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=


" Window Settings
" Set persistent status bar
set laststatus=2

" Search Settings
" Ignore case when searching
set ignorecase
" When searching try to be smart about cases
set smartcase
" Highlight search results
set hlsearch
" Make search act like search in modern browsers
set incsearch
" Don't redraw while executing macros
set lazyredraw
" Turn magic on for regex
set magic
" Add some margin to the left of the line numbers
set foldcolumn=1

" Hide mode information because lighline provides it already
set noshowmode


" Files
set nobackup
set nowb
set noswapfile
