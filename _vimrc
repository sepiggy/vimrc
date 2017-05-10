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
" set background=light
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

" ----- 设置 statusline ----- {{{
" set statusline=%f
" set statusline+=%m
" set statusline+=%=
" set statusline+=%{''.(&fenc!=''?&fenc:&enc).''}
" set statusline+=/
" set statusline+=%{&ff}    "file format
" set statusline+=\ -\      " Separator
" set statusline+=%l/%L
" set statusline+=[%p%%]
" set statusline+=\ -\      " Separator
" set statusline+=%1*\ %y\ %*
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
nnoremap <silent> <tab>n :tabnew<cr>
nnoremap <silent> <tab>w :tabclose<cr>
nnoremap <silent> <tab>h :tabp<cr>
nnoremap <silent> <tab>l :tabn<cr>
nnoremap <silent> <leader>1 :tabn 1<cr>
nnoremap <silent> <leader>2 :tabn 2<cr>
nnoremap <silent> <leader>3 :tabn 3<cr>
nnoremap <silent> <leader>4 :tabn 4<cr>
nnoremap <silent> <leader>5 :tabn 5<cr>
nnoremap <silent> <leader>6 :tabn 6<cr>
nnoremap <silent> <leader>7 :tabn 7<cr>
nnoremap <silent> <leader>8 :tabn 8<cr>
nnoremap <silent> <leader>9 :tabn 9<cr>
nnoremap <silent> <leader>0 :tabn 10<cr>
nnoremap <silent> <s-tab> :tabnext<cr>
inoremap <silent> <s-tab> <esc>:tabnext<cr>
" }}}

" ----- 跳转分割窗口 ----- {{{
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <c-w> <c-w>c
" }}}

" ----- 正常模式下 alt + j, k, h, l 调整分割窗口大小 ----- {{{
nnoremap <m-j> :resize +5<cr>
nnoremap <m-k> :resize -5<cr>
nnoremap <m-h> :vertical resize -5<cr>
nnoremap <m-l> :vertical resize +5<cr>
" }}}

" ----- 插入模式下的 keymap ----- {{{
" 模拟 <esc>
inoremap jk <esc>

" 插入模式下模拟Emacs键位
inoremap <c-f> <right>
inoremap <c-b> <left>
inoremap <c-p> <up>
inoremap <c-n> <down>
inoremap <c-a> <home>
inoremap <c-e> <end>
inoremap <c-h> <bs>

" 插入模式下模拟符号键
inoremap qq _
inoremap ww +
inoremap zz -
inoremap xx =
" }}}

"----- 命令模式下的 keymap ----- {{{
cnoremap <c-a> <home>
cnoremap <c-e> <end>
"}}} 

" ----- 其他键相关 ----- {{{
" 按分号键直接进入命令模式
nnoremap ; :

" 强制居中
nnoremap j jzz
nnoremap k kzz
nnoremap ( (zz
nnoremap ) )zz
nnoremap { {zz
nnoremap } }zz

" 将当前光标所在的单词用双引号括起来
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel

" 将当前光标所在的单词用单引号括起来
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel

" 移动到当前行的首部
nnoremap gh g^

" 移动到当前行的尾部
nnoremap gl g$

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

" ----- 1.1 nerdtree ----- {{{
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

" ----- 1.2 jistr/vim-nerdtree-tabs ----- {{{
Plug 'jistr/vim-nerdtree-tabs'
map <leader>t <plug>NERDTreeTabsToggle<cr>
" }}}

" ----- 1.3 Xuyuanp/nerdtree-git-plugin ----- {{{
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

" ----- 2. ctrlp.vim ----- {{{
Plug 'ctrlpvim/ctrlp.vim'
" }}}

" ----- 3. easymotion----- {{{
Plug 'easymotion/vim-easymotion'
map <Leader> <Plug>(easymotion-prefix)
let g:EasyMotion_smartcase = 0
nmap w <Plug>(easymotion-bd-w)
nmap W <Plug>(easymotion-bd-W)
nmap e <Plug>(easymotion-bd-e)
nmap E <Plug>(easymotion-bd-E)
nmap f <Plug>(easymotion-overwin-f)
nmap J <Plug>(easymotion-j)
nmap K <Plug>(easymotion-k)
nmap H <Plug>(easymotion-Fl)
nmap L <Plug>(easymotion-fl)
" }}}

" ----- 4. auto-pairs ----- {{{
Plug 'jiangmiao/auto-pairs'
"  }}}

" ----- 5. vim-smooth-scroll ----- {{{
Plug 'terryma/vim-smooth-scroll'
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
"  }}}

" ----- 6. vim-expand-region ----- {{{
Plug 'terryma/vim-expand-region'
map v <plug>(expand_region_expand)
map V <plug>(expand_region_shrink)
" }}}

" ----- 7. vim-multiple-cursors ----- {{{
Plug 'terryma/vim-multiple-cursors'
" }}}

" ----- 8. vim-commentary ----- {{{
Plug 'tpope/vim-commentary'
" }}}

" ----- 9. vim-surround ----- {{{
Plug 'tpope/vim-surround'
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

" ----- 15. bufferhint ---- {{{
Plug 'bsdelf/bufferhint'
nnoremap - :call bufferhint#Popup()<cr>
nnoremap \ :call bufferhint#LoadPrevious()<cr>
" }}}

" ----- 16. JamshedVesuna/vim-markdown-previe ----- {{{
Plug 'JamshedVesuna/vim-markdown-preview'
let vim_markdown_preview_hotkey='<c-m>'
let vim_markdown_preview_browser='Google Chrome'
" }}}

" ----- 17. junegunn/goyo.vom ----- {{{
Plug 'junegunn/goyo.vim'
nmap <leader>g :Goyo<cr>
xmap <leader>g :Goyo<cr>
" }}}

" ----- 18. junegunn/limelight.vim ----- {{{
Plug 'junegunn/limelight.vim'
nnoremap <leader>l :Limelight!! 0.8<cr>
" }}}

" ----- 19. junegunn/vim-easy-align ----- {{{
Plug 'junegunn/vim-easy-align'
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
" }}}

" ----- 20. ervandew/supertab ----- {{{
Plug 'ervandew/supertab'
" }}}

" ----- 21. vim-airline/vim-airline ----- {{{
Plug 'vim-airline/vim-airline'
set laststatus=2
" }}}

" ----- 22. vim-airline-themes/vim-airline-themes ----- {{{
Plug 'vim-airline/vim-airline-themes'
" }}}

" ----- 23. luochen1990/rainbow ----- {{{
Plug 'luochen1990/rainbow'
let g:rainbow_active = 1
" }}}

" ----- 24. flazz/vim-colorschemes ----- {{{
Plug 'flazz/vim-colorschemes'
" }}}

call plug#end()
" }}}

