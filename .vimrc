"----
"koji's vim config
"----
syntax on
set number
set autoindent
set expandtab
set incsearch
set showmatch
set smarttab
set tabstop=2
set shiftwidth=2
set ignorecase
set laststatus=2
set clipboard+=unnamed
"カラー設定
colorscheme molokai
let g:molokai_original=1

"---
"Gtags key binding(Gnu Global)
"how to use:
"$ gtags -v #gtagsでタグ付け
"$ htags -saF #HTML化する（サイズでかいよ）

"grep検索
map <C-g> :Gtags -g
"関数一覧表示
map <C-h> :Gtags -f %<CR>
"カーソル位置の単語を検索j
map <C-j> :GtagsCursor<CR>
"前の検索結果
map <C-n> :cn<CR>
"次の検索結果
map <C-p> :cp<CR>

"---
"NerdTree
"how to use:
"<C-e>でナードツリーの表示・非表示
noremap <C-e> :NERDTreeToggle<CR>

nnoremap <ESC><ESC> :nohlsearch<CR>
imap <C-j> <ESC>
"---
set nocompatible
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#begin(expand('~/.vim/bundle'))
  NeoBundleFetch 'Shougo/neobundle.vim'
  NeoBundle 'kannokanno/previm'
  NeoBundle 'tyru/open-browser.vim'
  NeoBundle 'plasticboy/vim-markdown'
  NeoBundle 'scrooloose/nerdtree'
  NeoBundleLazy 'jelera/vim-javascript-syntax', {'autoload':{'filetypes':['javascript']}}
  call neobundle#end()
endif 
au BufRead,BufNewFile *.md set filetype=markdown
let g:previm_open_cmd = 'open -a Firefox'

filetype plugin indent on

