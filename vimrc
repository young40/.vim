"set transparency=20 " 设置背景透明度
set nocompatible " 关闭vi兼容模式
set confirm " 处理未保存或只读文件弹出确认
set number " 显示行号
set nobackup " 不生成临时文件
set noswapfile 

set ignorecase " 搜索不区分大小写
set smartcase " 搜索时当关键词有大写时保持大小写敏感
set history=100000 " 历史记录数
set autoindent " 自动缩进
set smartindent " 新行智能自动缩进
set cindent
set tabstop=4 "Tab宽度
set softtabstop=4 " 统一缩进为4
set shiftwidth=4 
"set noexpandtab " 不用空格代替制表符
set expandtab "用空格代替制表符
set hlsearch " 搜索字符高亮
set incsearch " 马上显示搜索结果
set langmenu=zh_CN.UTF-8 " 语言设置 mac下似乎无效
set helplang=cn

set enc=utf-8
set tenc=utf-8
set fenc=utf-8
set fencs=utf-8,usc-bom

set laststatus=2 " 总是显示状态行

execute pathogen#infect()  
" 使用pathgen管理插件
"
syntax enable
set background=dark
colorscheme solarized

filetype on "侦测文件类型
filetype plugin on "载入文件类型插件
filetype indent on "为特定类型文件载入相关缩进文件

set report=0 " 可以使用:commands 命令查看被改动的行, mac下似乎无效

set showmatch " 高亮显示匹配的括号
set matchtime=4 " 匹配的括号高亮显示时间单位0.1s, 似乎无效


set cursorline "高亮当前行
set autochdir " 自动切换当前目录为当前文件所在的目录

" 打开多个文件时使用ctrl+tab切换
nmap <s-T> :bn<CR><CR>
" OS X下始终无效

nmap <tab> V>
nmap <s-tab> V<

nmap <s-P> :r !pbpaste<CR><CR> " 系统粘贴 shift+p
map <C-s> :w<CR><CR> " 保存快捷键



" 似乎是个jquery文件单独着色的
" au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery

" autoload _vimrc .vimrc 内容改变后自动加载
autocmd! bufwritepost ~/.vimrc source % 

" autocmd vimenter * NERDTree "自动打开文件树
" autoquit vim when only NERDTree left 
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDChristmasTree=1
let NERDTreeAutoCenter=1
let NERDTreeHighlightCursorline=1
let NERDTreeMouseMode=2
let NERDTreeShowBookmarks=1
let NERDTreeShowHidden=0
let NERDTreeShowLineNumbers=1
nnoremap f :NERDTreeToggle<CR><CR>
autocmd vimenter * if !argc() | NERDTree | endif " smart open NerdTree when vim start

" Popup color. effect neocomplcache
hi Pmenu ctermbg=8
hi PmenuSel ctermbg=1
hi PmenuSbar ctermbg=0

" neocomplcache {{{
let g:neocomplcache_enable_at_startup = 1
" }}}

" vim-javascript {{{
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"
" }}}
