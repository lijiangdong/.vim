call plug#begin('~/.vim/plugged')
Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/nerdtree'
Plug 'altercation/vim-colors-solarized'
Plug 'kien/ctrlp.vim'
Plug 'klen/python-mode'
Plug 'junegunn/fzf'
Plug 'mbbill/undotree'
Plug 'mileszs/ack.vim'
Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline'
Plug 'gregsexton/gitv', {'on': ['Gitv']}
Plug 'tpope/vim-commentary'
Plug 'airblade/vim-gitgutter'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/syntastic'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'oplatek/Conque-Shell'
Plug 'vim-scripts/taglist.vim'
Plug 'chazy/cscope_maps'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'justinj/vim-react-snippets'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'sbdchd/neoformat'
Plug 'udalov/kotlin-vim'
Plug 'flowtype/vim-flow'
Plug 'tmhedberg/SimpylFold'
Plug 'vim-scripts/indentpython.vim'
Plug 'nvie/vim-flake8'
Plug 'tpope/vim-fugitive'
Plug 'Lokaltog/powerline'
Plug 'hsanson/vim-android'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'suan/vim-instant-markdown'
Plug 'Yggdroot/indentLine'
Plug 'fholgado/minibufexpl.vim'
call plug#end()

" Auto add head info
" .py file into add header
function HeaderPython()
    call setline(1, "#!/usr/bin/env python")
    call append(1, "# -*- coding: utf-8 -*-")
    normal G
    normal o
endf
autocmd bufnewfile *.py call HeaderPython()

" .sh file
function HeaderBash()
    call setline(1, "#!/usr/bin/env bash")
    normal G
    normal o
endf
autocmd bufnewfile *.sh call HeaderBash()

"显示行号
set number
"去掉vi的一致性
set nocompatible
" 隐藏滚动条    
set guioptions-=r 
set guioptions-=L
set guioptions-=b
set clipboard=unnamed
"隐藏顶部标签栏
set showtabline=0
set tabstop=2
set softtabstop=2
set expandtab
set shiftwidth=2
set formatoptions=tcrq
set textwidth=80

set splitright

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <space> za
"设置字体
set guifont=Monaco:h13

syntax on   "开启语法高亮"
let g:solarized_termcolors=256  "solarized主题设置在终端下的设置"
colorscheme jellybeans

set fileformat=unix "设置以unix的格式保存文件"
"set cindent     "设置C样式的缩进格式
set showmatch   "显示匹配的括号"
set laststatus=2    "命令行为两行"
set fenc=utf-8      "文件编码"
set mouse=""     "启用鼠标"
set ignorecase      "忽略大小写"
set incsearch
set hlsearch        "高亮搜索项"
set whichwrap+=<,>,h,l
set autoread
set autowrite
"set cursorline      "突出显示当前行
"set cursorcolumn        "突出显示当前列
set ruler "显示光标信息
set foldmethod=indent
set foldlevel=99

map <F2> :NERDTreeToggle<CR>
"按F5运行python"

"默认配置文件路径
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
"打开vim时不再询问是否加载ycm_extra_conf.py配置
let g:ycm_confirm_extra_conf=0
set completeopt=longest,menu
"python解释器路径
let g:ycm_path_to_python_interpreter='/usr/bin/python3'
""是否开启语义补全
let g:ycm_seed_identifiers_with_syntax=1
"是否在注释中也开启补全
let g:ycm_complete_in_comments=1
let g:ycm_collect_identifiers_from_comments_and_strings = 0
"开始补全的字符数
let g:ycm_min_num_of_chars_for_completion=2
"补全后自动关机预览窗口
let g:ycm_autoclose_preview_window_after_completion=1
" 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_cache_omnifunc=0
"字符串中也开启补全
let g:ycm_complete_in_strings = 1

let g:ycm_server_python_interpreter='/usr/bin/python3'
"离开插入模式后自动关闭预览窗口
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
"回车即选中当前项
"inoremap <expr> <CR>       pumvisible() ? '<C-y>' : '\<CR>'     
"上下左右键行为
inoremap <expr> <Down>     pumvisible() ? '\<C-n>' : '\<Down>'
inoremap <expr> <Up>       pumvisible() ? '\<C-p>' : '\<Up>'
inoremap <expr> <PageDown> pumvisible() ? '\<PageDown>\<C-p>\<C-n>' : '\<PageDown>'
inoremap <expr> <PageUp>   pumvisible() ? '\<PageUp>\<C-p>\<C-n>' : '\<PageUp>'

let g:ycm_python_binary_path = '/usr/bin/python3'

" Documentation 显示文档
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting 代码查错，=1为启用
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
let g:pymode_lint_signs = 1
" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'

" syntax highlighting 高亮形式
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all
" Don't autofold code 禁用自动代码折叠
let g:pymode_folding = 0
let g:pymode_python = 'python3'

"run python
map <F5> :call CompileRunGcc()<CR>
 
func! CompileRunGcc()
	exec "w" 
	if &filetype == 'c' 
		exec '!g++ % -o %<'
		exec '!time ./%<'
	elseif &filetype == 'cpp'
		exec '!g++ % -o %<'
		exec '!time ./%<'
	elseif &filetype == 'python'
		exec '!time python %'
	elseif &filetype == 'sh'	
		:!time bash %
	endif                                                                              
endfunc

"vim-commentary
"为python和shell等添加注释
autocmd FileType python,shell,coffee set commentstring=#\ %s
"修改注释风格
autocmd FileType java,c,cpp,kt set commentstring=//\ %s

"syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_error_symbol='>>'
let g:syntastic_warning_symbol='>'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_loc_list_height = 5
let g:syntastic_python_checkers=['pyflakes'] " 使用pyflakes,速度比pylint快
let g:syntastic_html_checkers=['tidy', 'jshint']	
let g:syntastic_javascript_checkers = ['eslint', 'jsxhint']
let g:syntastic_javascript_jsxhint_exec = 'jsx-jshint-wrapper'

highlight SyntasticErrorSign guifg=white guibg=black
function! ToggleErrors()
	let old_last_winnr = winnr('$')
	lclose
	if old_last_winnr == winnr('$')
   		Errors
	endif
endfunction
nnoremap <Leader>s :call ToggleErrors()<cr>

"ctrlp.vim
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.class,*/build/*
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

"Tagbar
nmap <F8> :TagbarToggle<CR>

set tags =tags;

let g:jsx_ext_required = 0

autocmd BufWritePre *.js Neoformat

let g:SimpylFold_docstring_preview=1

" Plugin indentLine settings.
let g:indentLine_char = "┆"
let g:indentLine_enabled = 1
let g:autopep8_disable_show_diff=1
