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
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
Plugin 'fenghui2013/winmanager'
Plugin 'scrooloose/nerdtree'
Plugin 'fatih/vim-go'
" Plugin 'rkulla/pydiction'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
Plugin 'python.vim'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"========winmanager config========
" let g:winManagerWindowLayout="NERDTree|TagList"
let g:winManagerWindowLayout="NERDTree"

"========nerdtree config========
let g:NERDTree_title="[NERDTree]"

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
