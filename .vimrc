"========common config========
"针对不同的文件类型采用不同的缩进格式
filetype indent on
"允许插件
filetype plugin on
"自动补全时采用菜单式命令列表
set wildmenu

"显示行号
set number
"取消换行
set nowrap
"括号配对情况
set showmatch
set mat=2
"高亮search命中的文本
set hlsearch
"搜索时忽略大小写
set ignorecase
"随着键入即时搜索
set incsearch
"有一个或以上大写字母时仍大小写敏感
set smartcase

"设置Tab键的宽度[等同的空格个数]
set tabstop=4
set shiftwidth=4
"将tab自动转化为空格
set expandtab
"按退格键可以一次删掉4个空格
set softtabstop=4
"设置匹配模式，类似当输入一个左括号时匹配相应的右括号
set showmatch
"encoding
let &termencoding=&encoding
set fileencodings=utf-8,gbk
"save session
set sessionoptions=buffers,curdir,folds,help,options,tabpages,winpos,winsize
function! SessionSave()
    exec 'mks! mysession.vim'
    exec 'wqa'
endfunction

nmap qqq :call SessionSave()<CR>

"======== bundle config========
set nocompatible                " be iMproved
filetype off                    " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

"my Bundle here:
"
" original repos on github
Bundle 'scrooloose/nerdtree'
Bundle 'gg/python.vim'
"Bundle 'kien/ctrlp.vim'
"Bundle 'sukima/xmledit'
"Bundle 'sjl/gundo.vim'
"Bundle 'jiangmiao/auto-pairs'
"Bundle 'klen/python-mode'
"Bundle 'Valloric/ListToggle'
"Bundle 'SirVer/ultisnips'
"Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'
"Bundle 't9md/vim-quickhl'
Bundle 'Lokaltog/vim-powerline'
"Bundle 'scrooloose/nerdcommenter'
"..................................
" vim-scripts repos
Bundle 'taglist.vim'
Bundle 'Pydiction'
"Bundle 'YankRing.vim'
"Bundle 'vcscommand.vim'
"Bundle 'ShowPairs'
"Bundle 'SudoEdit.vim'
"Bundle 'EasyGrep'
"Bundle 'VOoM'
"Bundle 'VimIM'
"..................................
" non github repos
Bundle 'https://github.com/fenghui2013/winmanager.git'
" Bundle 'git://git.wincent.com/command-t.git'
"......................................
filetype plugin indent on

" plugin scrooloose/syntastic setting
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_flake8_args="--ignore=E501,"
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"========winmanager config========
let g:NERDTree_title="[NERDTree]"
let g:winManagerWindowLayout="NERDTree|TagList"

function! NERDTree_Start()
    exec 'NERDTree'
endfunction

function! NERDTree_IsValid()
    return 1
endfunction

nmap wm :WMToggle<CR>

"========taglist config========
let Tlist_Auto_Open = 0                     "手动打开taglist
let Tlist_Show_One_File = 1                 "只显示当前文件的tag
let Tlist_Exit_OnlyWindow = 1               "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 0              "在左侧窗口中显示taglist窗口
let Tlist_WinWidth = 50                     "taglist窗口的宽度
let Tlist_Sort_Type = 'name'                "taglist以tag名字进行排序
let Tlist_File_Fold_Auto_Close = 1          "只显示当前文件的tag
let Tlist_Process_File_Always = 0           "如果为1，则taglsit会始终解析文件中的tag，而不管有没有打开
let Tlist_Use_Horiz_Window = 0              "竖直显示taglist
"==shortcuts
nnoremap <silent> <F8> :TlistToggle<CR>


"========Pydiction config========
let g:pydiction_location = '~/.vim/bundle/Pydiction/complete-dict'
let g:pydiction_menu_height = 7
