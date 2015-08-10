" 構文ごとに色を変化
syntax on

" 256色モード
set t_Co=256

" 行番号表示
set number

" 括弧の対応をハイライト
set showmatch

" 不可視文字の表示
set list

" 不可視文字の表示形式
set listchars=tab:▸\ ,trail:_,eol:↵,extends:»,precedes:«,nbsp:%

" 全角スペースの表示
highlight ZenkakuSpace ctermfg=237 cterm=underline
match ZenkakuSpace /　/

" 印字不可文字を16進数で表示
set display=uhex

" □などの文字を全角1文字サイズで表示
if exists('&ambiwidth')
    set ambiwidth=double
endif

" TABの代わりに空白を利用する
set expandtab

" TABが対応する空白の数（表示量）
set tabstop=4

" 自動インデントに使われる空白の数
set shiftwidth=4

" TABの代わりに挿入される空白の数
set softtabstop=4

" 行頭でTABを入力したときにshiftwidthの数だけインデントする
set smarttab

" 自動インデント
set autoindent

" 新しい行を開始したときに現在の行と同じインデントにする
set smartindent

" C言語ライクなインデント
set cindent

" 最後まで検索したら先頭へ戻る
set wrapscan

" 大文字小文字無視
set ignorecase

" 大文字ではじめたら大文字小文字無視しない
set smartcase

" インクリメンタルサーチ
set incsearch

" 検索文字をハイライト
set hlsearch

" ヤンクとハイライトをクリップボードにコピー
set clipboard=unnamed,autoselect

" 他で書き換えられたら自動で読み直し
set autoread

" バックスペースで改行削除
set backspace=2

" コマンド入力時のファイル名保管
set wildmode=longest,list,full

" Vim内部エンコーディング
set encoding=utf-8

" エンコーディング判別順序
set fileencodings=utf-8,cp932,euc-jp,iso-2022-jp

" 表示行単位で上下移動する
nnoremap j gj
nnoremap k gk
nnoremap <Down> gj
nnoremap <Up>   gk
vnoremap j gj
vnoremap k gk
vnoremap <Down> gj
vnoremap <Up>   gk

" C-jをエスケープの代わりに使用する
inoremap <C-j> <Esc>
vnoremap <C-j> <Esc>

" 括弧の入力を完了したら括弧内に移動する
inoremap {} {}<Left>
inoremap [] []<Left>
inoremap () ()<Left>
inoremap <> <><Left>
inoremap "" ""<Left>
inoremap '' ''<Left>
