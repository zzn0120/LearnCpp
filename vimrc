" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

runtime! debian.vim

" Vim will load $VIMRUNTIME/defaults.vim if the user does not have a vimrc.
" This happens after /etc/vim/vimrc(.local) are loaded, so it will override
" any settings in these files.
" If you don't want that to happen, uncomment the below line to prevent
" defaults.vim from being loaded.
" let g:skip_defaults_vim = 1

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"filetype plugin indent on

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" D"o smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)

" 不兼容VI
set nocompatible
" 語法高亮
set syntax=on
" 編碼
set encoding=utf-8

set showmode
set showcmd
set t_Co=256

filetype indent on

" 縮進
set autoindent
set tabstop=4
set shiftwidth=4

" set expandtab     " 默認將tab轉爲空格
" set shoftabstop=2 " tab轉爲多少個空格

" 外觀
set number
" set relativenumber " 顯示光標所在的當前的行號，其他行轉換爲該行的相對行
set cursorline       " 光標所在行高亮
set textwidth=80     " 行寬，一行最多80個字符
set wrap             " 自動折行
" set nowrap             " 關閉自動折行
set linebreak        " 不會在單詞內部折行
set wrapmargin=2     " 折行處與編輯窗口的右邊緣之間空出的字符數
set scrolloff=5      " 垂直滾動時，光標距離頂部/底部的位置（單位：行）
set sidescrolloff=15 " 水平滾動時，光標距離行首或行尾的位置（單位：字符）。該配置在不折行時比較有用。
set laststatus=2     " 是否顯示狀態欄。0表示不顯示，1表示只在多窗口時顯示，2表示顯示。
set ruler            " 在狀態欄顯示光標當前位置（位於哪一行那一列）

" 搜索
set showmatch        " 光標遇到圓括號、方括號、大括號時，自動高亮對應的另一個圓括號、方括號和大括號
set hlsearch         " 搜索時顯示高亮結果
set incsearch        " 輸入搜索時，每輸入一個字符，就自動跳到第一個匹配結果
set ignorecase       " 搜索時忽略大小寫
set smartcase        " 如果同時打開了ignorecase，那麼對於只有一個大寫字母的搜索詞，將大小寫敏感；其他情況都是大小寫不敏感。比如搜索Test時，將不匹配test；搜索test時，將匹配Test。

" 編輯
" set spell spelllang=en_us   " 打開英語單詞的拼寫檢查
" set nobackup                " 不創建備份文件。默認情況下，文件保存時，會額外創建一個備份文件，它的文件名字是在原文件名的末尾，再添加一個波浪號（~）。
" set noswapfile              " 不創建交換文件，交換文件主要用於系統崩潰時恢復文件，文件名的開頭是.、結尾是.swp。
set undofile                " 保留撤銷歷史. Vim會在編輯時保存操作歷史, 用來供用戶撤銷更改. 默認情況下, 操作記錄只在本次編輯時有效, 一旦編輯結束、文件關閉, 操作歷史就消失了. 打開這個設置, 可以在文件關閉後, 操作記錄保留在一個文件裏面, 繼續存在. 這意味着, 重新打開一個文件, 可以撤銷上一次編輯的操作. 撤銷文件是跟原文件保存在一起的隱藏文件, 文件名以.um~開頭。
" set backupdir=~/.vim/.backup//  " 設置備份文件的保存位置
" set directory=~/.vim/.swp//     " 設置交換文件的保存位置
" set undodir=~/.vim/.undo//      " 設置操作歷史文件的保存位置
" 結尾的 // 表示生成的文件名帶結對路徑, 路徑中用 %
" 替換目錄分隔符，這樣可以防止文件重名。
set autochdir    " 自動切換工作目錄. 這主要用在一個Vim回話之中打開多個文件的情況, 默認的工作目錄是打開第一個文件的目錄, 該配置可以將工作目錄自動切換到, 正在編輯的文件的目錄。
set noerrorbells " 出錯時不要發出聲響
" set visualbell   " 出錯時，發出視覺提示，通常是屏幕閃爍（太閃了）
set history=1000   " Vim 需要記錄多少次歷史操作
set autoread       " 打開文件監視。如果在編輯過程中文件發生外部改變（比如被別的編輯器編輯了），就會發出提示。
" set listchars=tab:■, trail:■   " 不知道怎麼用，替換行尾的空白鍵
" set list
set wildmenu                   " 開啓底部命令菜單
set wildmode=longest:list,full " 底部操作指令按下Tab鍵自動補全。第一次按下Tab，會顯示所有匹配的操作指令和清單；第二次按下Tab，會一次選擇各個指令。





" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif


