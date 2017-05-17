" Startup {{{
" ----- 文件类型探测 ----- {{{
filetype indent plugin on
"  }}}

" ----- vim 文件折叠方式为 marker ----- {{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
"  }}}

" ----- 对于文本文件长于 78 个字符的行施行自动换行 ----- {{{
autocmd FileType text setlocal textwidth=78
" }}}

" ----- 启动 vim 就进入 goyo 模式 ----- {{{
autocmd! BufNewFile,BufRead * :Limelight 0.8
" }}}

" ----- 进入 goyo 模式后自动触发 limelight, 退出后则关闭 ----- {{{
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight
" }}}

" 让光标停留在中央，固定视觉的重点/编辑区域
autocmd! CursorMoved * normal zz

set pastetoggle=<leader>p

" }}}

" vim 使用习惯 {{{
" ----- 禁用鼠标 ----- {{{
set mouse-=a
"  }}}

" ----- 打字时隐藏鼠标指针 ----- {{{
set mousehide
"  }}}

" ----- 禁用不必要的按键 ----- {{{
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
" }}}
" }}}

" General {{{
" ----- 关闭对 vi 的兼容 ----- {{{
set nocompatible
" }}}

" ----- 不创建备份文件 ----- {{{
set nobackup
" }}}

" ----- 不创建交换文件 ----- {{{
set noswapfile
" }}}

" ----- 保存 1024 个命令和 1024 个查找模式的历史 ----- {{{
set history=1024
" }}}

" ----- 根据当前窗口的文件切换目录 ----- {{{
set autochdir
" }}}

" ----- 允许指定键跨越行边界 ----- {{{
set whichwrap=b,s,<,>,[,]
" }}}

" ----- 在插入模式下在哪里允许 <BS> 删除光标前面的字符 ----- {{{
set backspace=indent,eol,start whichwrap+=<,>,[,]
" }}}

" ----- Vim 的默认寄存器和系统剪贴板共享 ---- {{{
set clipboard+=unnamed
" }}}

" ----- 设置 alt 键不映射到菜单栏 ----- {{{
set winaltkeys=no
" }}}
" }}}

" Lang & Encoding {{{
" ----- 参与自动检测的字符编码 ----- {{{
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
" }}}

" ----- 设置 Vim 内部使用的字符编码 ----- {{{
set encoding=utf-8
" }}}

" ----- 用于菜单翻译的语言 ----- {{{
set langmenu=zh_CN
" }}}

" ----- 设置语言编码 ----- {{{
let $LANG='en_us.UTF-8'
" }}}
" }}}

" GUI {{{
" ----- 配置主题 ----- {{{
colorscheme predawn
set background=dark
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
" }}}

" ----- 高亮光标所在的屏幕行 ----- {{{
set cursorline
" }}}

" ----- 高亮显示所有匹配的单词 ----- {{{
set hlsearch
" }}}

" ----- 显示行号 ----- {{{
set number
" }}}

" ----- 设置新窗口位置 ----- {{{
" 新的窗口出现在当前窗口的下面
set splitbelow

" 垂直分割的窗口出现在当前窗口的右边
set splitright
" }}}

" ----- GVim 外观设置 ----- {{{
" 不显示工具栏
set guioptions-=T

" 不显示菜单栏
set guioptions-=m

" 垂直分割窗口时，不显示左边的滚动条
set guioptions-=L

" 不显示右边的滚动条
set guioptions-=r

" 不显示底部的 (水平) 滚动条
set guioptions-=b
"  }}}

" ----- 设置字体 ----- {{{
set guifont=Inconsolata:h14:cANSI
" }}}

" }}}

" Format {{{
" ----- 开启新行时 (插入模式下输入 <cr>，或者使用 "o" 或 "O" 命令)，从当前行复制缩进距离 ----- {{{
set autoindent
" }}}

" ----- 开启新行时使用智能自动缩进 ----- {{{
set smartindent
" }}}

" ----- 设置缩进 ----- {{{
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set foldmethod=indent
" }}}

" ----- 语法高亮显示 ----- {{{
syntax enable
syntax on
" }}}
" }}}

" Keymap {{{
" ----- leader 键设置 ----- {{{
" 设置leader键
let mapleader=","

" 设置localleader键
let maplocalleader="\\"
" }}}

" ----- vimrc 相关 ----- {{{
" 在一个新的标签页中编辑我的 vimrc 文件
nnoremap <leader>v :tabnew $MYVIMRC<cr>

" 重读我的 vimrc 文件
nnoremap <leader>s :source $MYVIMRC<cr>
" }}}

" ----- 标签页相关 ----- {{{
" 新建标签页
nnoremap <silent> <tab>n :tabnew<cr>

" 查找并在新标签页中打开文件
nnoremap <tab>f :tabfind<space>

" 显示已打开标签页的列表
nnoremap <silent> <tab>s :tabs<cr>

" 关闭当前标签页
nnoremap <silent> <tab>w :tabclose<cr>

" 仅保留当前标签页
nnoremap <silent> <tab>o :tabonly<cr>

" 跳转到上一个标签页
nnoremap <silent> <tab>h :tabp<cr>

" 跳转到下一个标签页
nnoremap <silent> <tab>l :tabn<cr>

" 跳转到第一个标签页
nnoremap <silent> <tab>a :tabfirst<cr>

" 跳转到最后一个标签页
nnoremap <silent> <tab>z :tablast<cr>

" 跳转到下一个标签页
nnoremap <silent> <s-tab> :tabnext<cr>
inoremap <silent> <s-tab> <esc>:tabnext<cr>

" 跳转到指定的标签页
nnoremap <silent> <tab>1 :tabn 1<cr>
nnoremap <silent> <tab>2 :tabn 2<cr>
nnoremap <silent> <tab>3 :tabn 3<cr>
nnoremap <silent> <tab>4 :tabn 4<cr>
nnoremap <silent> <tab>5 :tabn 5<cr>
nnoremap <silent> <tab>6 :tabn 6<cr>
nnoremap <silent> <tab>7 :tabn 7<cr>
nnoremap <silent> <tab>8 :tabn 8<cr>
nnoremap <silent> <tab>9 :tabn 9<cr>
nnoremap <silent> <tab>0 :tabn 10<cr>
" }}}

" ----- 分割窗口相关 ----- {{{
" 跳转分割窗口
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <c-w> <c-w>c

" 使用 Alt + H/J/K/L 调整分割窗口的大小
nnoremap <m-j> :resize +5<cr>
nnoremap <m-k> :resize -5<cr>
nnoremap <m-h> :vertical resize -5<cr>
nnoremap <m-l> :vertical resize +5<cr>

inoremap <m-j> <esc>:resize +5<cr>i
inoremap <m-k> <esc>:resize -5<cr>i
inoremap <m-h> <esc>:vertical resize -5<cr>i
inoremap <m-l> <esc>:vertical resize +5<cr>i
" }}}

" ----- 跳转相关 ----- {{{
" 跳转到当前行的首部
nnoremap gh g^

" 跳转到当前行的尾部
nnoremap gl g$
" }}}

" ----- 插入模式下的 keymap (若没有明确配置则是 Vim 的内置功能) ----- {{{
" <jk> 进入到正常模式
inoremap jk <esc>

" <c-w> 删除到词首; <c-e> 到行尾; <c-t> 缩进
inoremap <c-e> <end>

" <c-a> 跳转到行首; <c-d> 反缩进; <c-f> 模拟 <right>
inoremap <c-a> <home>
inoremap <c-f> <right>
" inoremap <m-f> <s-right>

" <c-x> 进入到 <c-x> 子模式; <c-v> 切换到行 visual 模式; <c-b> 模拟 <left>
inoremap <c-v> <esc>V
inoremap <c-b> <left>
" inoremap <m-b> <s-left>

" <c-y> 复制上一行相同位置的字符到本行; <c-u> 删除字符到行首(但保留行首的缩进);
" <c-o> 进入到正常-插入模式; <c-p> 模拟 <up>
inoremap <c-p> <up>

" <c-h> 删除光标前的字符; <c-k> 删除字符到行尾
inoremap <c-k> <esc>ld$a

" <c-n> 模拟 <down>; <c-m> 回车
inoremap <c-n> <down>
" }}}

" ----- 命令模式下的 keymap ----- {{{
cnoremap <c-a> <home>
cnoremap <c-e> <end>
cnoremap <c-p> <up>
cnoremap <c-n> <down>
cnoremap <c-f> <right>
cnoremap <c-b> <left>
cnoremap <m-f> <s-right>
cnoremap <m-b> <s-left>
cnoremap jk <c-c>
"}}} 

" ----- 可视模式下的 keymap ----- {{{
vnoremap ; :
"  }}}

" ----- 正常模式下的 keymap ----- {{{
" 按分号键直接进入命令模式
nnoremap ; :

" 连接两行
nnoremap zJ J

" 将当前光标所在的单词用双引号括起来
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel

" 将当前光标所在的单词用单引号括起来
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel

" 将当前光标所在的单词用圆括号括起来
nnoremap <leader>( viw<esc>a)<esc>hbi(<esc>lel

" 从当前位置复制到行尾
nnoremap Y y$

" 高亮显示关键字后再按 Enter 键取消高亮
nnoremap <silent> <cr> :noh<cr>
" }}}

" ----- Quickly Run ----- {{{
map <leader>x :call CompileRunGcc()<cr>
func! CompileRunGcc()
    exec "w"
    if &filetype == 'c'
        exec "!g++ % -o %<"
        exec "!time ./%<"
    elseif &filetype == 'python'
        exec "!time python2.7 %"
    endif
endfunc
" }}}
" }}}

" Plugin {{{
call plug#begin()
" --- 1. 配色主题相关 --- {{{
" ----- 1.1 flazz/vim-colorschemes ----- {{{
Plug 'flazz/vim-colorschemes'
" }}}

" ----- 1.2 vim-airline/vim-airline ----- {{{
Plug 'vim-airline/vim-airline'
set laststatus=2
" }}}

" ----- 1.3 vim-airline-themes/vim-airline-themes ----- {{{
Plug 'vim-airline/vim-airline-themes'
" }}}

" ----- 1.4 junegunn/goyo.vom ----- {{{
Plug 'junegunn/goyo.vim'
nmap <leader>g :Goyo<cr>
xmap <leader>g :Goyo<cr>
" }}}

" ----- 1.5 junegunn/limelight.vim ----- {{{
Plug 'junegunn/limelight.vim'
nnoremap <leader>l :Limelight!! 0.8<cr>
" }}}
" }}}

" --- 2 文件浏览搜索相关 --- {{{
" ----- 2.1 nerdtree ----- {{{
Plug 'scrooloose/nerdtree'
" nerdtree快捷键
" 设置显示位置
let g:NERDTreeWinPos='right'
" 显示行号
let NERDTreeShowLineNumbers=1
let NERDTreeAutoCenter=1
" 显示隐藏文件
let NERDTreeShowHidden=1
" 设置宽度
let NERDTreeWinSize=31
" 在终端启动vim时，共享NERDTree
let g:nerdtree_tabs_open_on_console_startup=1
" 忽略以下文件的显示
let NERDTreeIgnore=['.idea', '.vscode', 'node_modules', '*.pyc']
" 显示书签列表
let NERDTreeShowBookmarks=1
" 设置初始目录
if exists('g:NERDTreeWinPos')
    autocmd vimenter * NERDTree D:\Code
endif
" }}}

" ----- 2.2 jistr/vim-nerdtree-tabs ----- {{{
Plug 'jistr/vim-nerdtree-tabs'
map <leader>t <plug>NERDTreeTabsToggle<cr>
" }}}

" ----- 2.3 Xuyuanp/nerdtree-git-plugin ----- {{{
Plug 'Xuyuanp/nerdtree-git-plugin'
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }
" }}}

" ----- 2.4 bufferhint ---- {{{
Plug 'bsdelf/bufferhint'
nnoremap - :call bufferhint#Popup()<cr>
nnoremap \ :call bufferhint#LoadPrevious()<cr>
" }}}

" ----- 2.5 ctrlp.vim ----- {{{
Plug 'ctrlpvim/ctrlp.vim'
" }}}
" }}}

" --- 3. 极速跳转、定位相关 --- {{{
" ----- 3.1 easymotion ----- {{{
Plug 'easymotion/vim-easymotion'
let g:EasyMotion_leader_key='<leader>'
let g:EasyMotion_smartcase=1
let g:EasyMotion_use_smartsign_us=1
let g:EasyMotion_use_upper=1
let g:EasyMotion_keys='ABCDEFGHIJKLMNOPQRSTUVWXYZ;'
let g:EasyMotion_verbose=0
nmap w <Plug>(easymotion-bd-w)
nmap W <Plug>(easymotion-bd-W)
nmap e <Plug>(easymotion-bd-e)
nmap E <Plug>(easymotion-bd-E)
nmap f <Plug>(easymotion-overwin-f)
nmap t <plug>(easymotion-bd-t)
nmap J <Plug>(easymotion-j)
nmap K <Plug>(easymotion-k)
nmap H <Plug>(easymotion-Fl)
nmap L <Plug>(easymotion-fl)
" }}}

" ----- 3.2 vim-smooth-scroll ----- {{{
Plug 'terryma/vim-smooth-scroll'
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<cr>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<cr>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<cr>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<cr>
" }}}
" }}}

" --- 4. 代码编写、自动补全 --- {{{
" ----- 4.1 auto-pairs ----- {{{
Plug 'jiangmiao/auto-pairs'
let g:AutoPairsFlyMode=1
let g:AutoPairsShortcutFastWrap='<m-w>'
" }}}

" ----- 4.2 vim-multiple-cursors ----- {{{
Plug 'terryma/vim-multiple-cursors'
" }}}

" ----- 4.3 vim-commentary ----- {{{
Plug 'tpope/vim-commentary'
" }}}

" ----- 4.4 vim-surround ----- {{{
Plug 'tpope/vim-surround'
" }}}
" }}}

" ------ 5 自动补全 ------ {{{
" --------- 5.1 ervandew/supertab --------- {{{
Plug 'ervandew/supertab'
" }}}

" ------- 5.2 davidhalter/jedi-vim ------- {{{
Plug 'davidhalter/jedi-vim'
" }}}
" }}}

" ----- 6. vim-expand-region ----- {{{
Plug 'terryma/vim-expand-region'
" map vj <plug>(expand_region_expand)
" map vk <plug>(expand_region_shrink)
" }}}

"  ----- 10. vim-fugitive ----- {{{
Plug 'tpope/vim-fugitive'
" }}}

" ----- 11. vim-repeat ----- {{{
Plug 'tpope/vim-repeat'
" }}}

"  ----- 12. fzf ----- {{{
Plug 'junegunn/fzf'
" }}}

" ----- 13. rking/ag.vim ----- {{{
Plug 'rking/ag.vim'
" }}}

" ----- 14. Conque-Shell ----- {{{
Plug 'vim-scripts/Conque-Shell'
" }}}


" ----- 19. junegunn/vim-easy-align ----- {{{
Plug 'junegunn/vim-easy-align'
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
" }}}

" ----- vim-scripts/YankRing.vim ----- {{{
Plug 'vim-scripts/YankRing.vim'
nnoremap <silent> <F11> :YRShow<CR>
" }}}

" ----- tpope/vim-unimpaired ----- {{{
Plug 'tpope/vim-unimpaired'
" }}}

call plug#end()
" }}}


