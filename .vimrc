"--------------------------------------------------
"            ___  ____  ____  ____  _
"           / _ \| __ )| __ )|  _ \( )___
"          | | | |  _ \|  _ \| |_) |// __|
"          | |_| | |_) | |_) |  _ <  \__ \
"           \__\_\____/|____/|_| \_\ |___/
"
"                   _
"           __   __(_)_ __ ___  _ __ ___
"           \ \ / /| | '_ ` _ \| '__/ __|
"           _\ V / | | | | | | | | | (__
"          (_)\_/  |_|_| |_| |_|_|  \___|
"
" Sokolov Innokenty, <sokolov.innokenty@gmail.com>
"--------------------------------------------------

call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

" fix ssh > vim > color
if has("terminfo")
    let &t_Co=8
    let &t_Sf="\e[3%p1%dm"
    let &t_Sb="\e[4%p1%dm"
else
    let &t_Co=8
    let &t_Sf="\e[3%dm"
    let &t_Sb="\e[4%dm"
endif

"set term=$TERM

set nocompatible                            " режим несовместимый с Vi
set tabstop=4                               " количество пробелов для табуляции
set softtabstop=4                           " количество пробелов добавляемое при нажатии на клавишу табуляции
set shiftwidth=4                            " количество пробелов в командах отступа, например >>, или <<
set expandtab                               " заменить табуляцию на пробелы
set list                                    " показывать спец-символы
set listchars=tab:>-,trail:▸                " список спец-символов (eol:<символ_конца_строки>,tab:<начальный_символ_табуляции><последующие_символы_табуляции>,trail:<сивол_пробела_в_конце_строки>,nbsp:<символ_неразрывного_пробела>)
set nu                                      " нумерация строк
set ruler                                   " показывать курсов всегда
set showcmd                                 " показывать незавершённые команды в статусбаре

set wrap                                    " включаем перенос строк
set linebreak                               " перенос строк по словам, а не по буквам

set wildmenu                                " показывать все возможные кандидаты для выбора при авто-завершении команд в командной строке
set wcm=<TAB>
set wildmode=list:longest,full              " вывести весь список сразу доступных вариантов, а затем перебором

set foldenable!                             " выключаем фолдинг(сворачивание)
" set foldmethod=indent                       " фолдинг по отступам

" set hlsearch                                " включаем подсветку выражения, которое ищется в тексте
set incsearch                               " поиск по набору текста
set smartcase                               " если искомое выражения содержит символы в верхнем регистре – ищет с учётом регистра, иначе – без учёта
" set ignorecase                              " игнорировать регистр
" set nohlsearch                              " отключаем подсветку найденного

set backup                                  " сохранять резервную копию файла
set backupdir=~/.vim/backup                 " сюда

set scrolljump=7                            " теперь нет необходимости передвигать курсор к краю экрана, чтобы подняться в режиме редактирования
set scrolloff=7                             " теперь нет необходимости передвигать курсор к краю экрана, чтобы опуститься в режиме редактирования

set novisualbell                            " выключаем надоедливый `звонок`
set t_vb=

set mouse=a                                 " включаем поддержку мыши
set mousemodel=popup                        " правая кнопка мыши - всплывает меню
set mousehide                               " скрывать мышь, когда печатаем

set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

set termencoding=utf-8                      " кодировка по умолчанию
" список кодировок, которые Vim будет перебирать при открытии файла
" для явного указания кодировки файла используйте `:e ++enc=koi8-r foo.txt`
set fileencodings=usc-bom,utf-8,default,cp1251,latin1
set ffs=unix,dos,mac                        " порядок применения формата файла

" не выгружать буфер, когда переключаемся на другой
" это позволяет редактировать несколько файлов в один
" и тот же момент без необходимости сохранения каждый раз,
" когда переключаешься между ними
set hidden

set autoread                                " автоматическое перечитывание файла при изменении

" GUI
if has('gui_running')
    set guioptions-=m                       " remove menu bar
    set guioptions-=T                       " remove toolbar
    set guifont=Terminus\ 12                " шрифт в gvim
    set cursorline                          " подсветка текущей строки
endif

set ch=1                                    " высота командной строки
set autoindent                              " автоотступ
set backspace=indent,eol,start
set whichwrap+=<,>,[,]                      " разрешить переход на новую/предыдущую строку при достижении конца/начала текущей

" строка состояния
set statusline=
set statusline+=%2*%-3.3n%0*\               " номер буфера
set statusline+=%f\                         " название файла
set statusline+=%h%1*%m%r%w%0*              " флаги
set statusline+=[%{&encoding},              " кодировка
set statusline+=%{&fileformat}]             " формат файла
set statusline+=\ %{strlen(&ft)?&ft:'none'} " тип файла
set statusline+=\ %{fugitive#statusline()}  " git
set statusline+=%=                          " выравнивание по правой стороне (align right)
set statusline+=%2*0x%-8B\                  " текущий символ
set statusline+=%-10.(%l,%c%V%)\ %<%P       " номер строки, номер столбца]
set laststatus=2

set smartindent                             " умные отступы (после{)
set fo+=cr                                  " Fix <Enter> for comment
set sessionoptions=curdir,buffers,tabpages  " опции сессий

" set spell                                   " проверка орфографии
set spelllang=ru,en                         " список языков

syntax on                                   " подсветка синтаксиса
filetype on                                 " включить определение типа файла (~/.vim/filetype.vim)
filetype plugin on                          " включить загрузку модулей
filetype indent on                          " включить загрузку сценариев настройки отступов

colorscheme wombat

" NERDTree
let NERDTreeIgnore=['\.pyc', '\.swp', '\.git', '\.hg', '\.svn', '\.bzr']
let NERDTreeShowHidden=1
let NERDTreeKeepTreeInNewTab=1

function! StripTrailingWhitespaces(command)
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    execute a:command
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
nmap _$ :call StripTrailingWhitespaces("%s/\\s\\+$//e")<CR>


"=======================
"=== горячие клавиши ===
"=======================

let mapleader = ","
let g:mapleader = ","

" выключаем  режим замены
imap >Ins> <Esc>i

" пробел в нормальном режиме перелистывает страницы
"nmap <Space> <PageDown>

" переместить строку вверх/вниз
nmap <C-Up> [e
nmap <C-Down> ]e
" переместить выделенные строки вверх/вниз
vmap <C-Up> [egv
vmap <C-Down> ]egv

" Ctrl+C, Ctrl+V
"map <C-C> "+y
"vmap <C-C> "+y
"imap <C-C> "+y
"map <C-V> "+P
"vmap <C-V> <esc>"+pli
"imap <C-V> <esc>"+pli

" поиск и замена слова под курсором
nmap ; :%s/\<<c-r>=expand("<cword>")<cr>\>/

" F3 - Gundo
nmap <F3> :GundoToggle<CR>
vmap <F3> <esc>:GundoToggle<CR>
imap <F3> <esc>:GundoToggle<CR>

" F4 - NERDTree
nmap <F4> :NERDTreeToggle<CR>
vmap <F4> <esc>:NERDTreeToggle<CR>
imap <F4> <esc>:NERDTreeToggle<CR>

" F5 - просмотр списка буферов
nmap <F5> <Esc>:BufExplorer<cr>
vmap <F5> <esc>:BufExplorer<cr>
imap <F5> <esc><esc>:BufExplorer<cr>

" F6 - предыдущий буфер
nmap <F6> :bp<cr>
vmap <F6> <esc>:bp<cr>i
imap <F6> <esc>:bp<cr>i

" F7 - следующий буфер
nmap <F7> :bn<cr>
vmap <F7> <esc>:bn<cr>i
imap <F7> <esc>:bn<cr>i

" F8 - список закладок
nmap <F8> :MarksBrowser<cr>
vmap <F8> <esc>:MarksBrowser<cr>
imap <F8> <esc>:MarksBrowser<cr>

" F9 - TList
nmap <F9> :TlistToggle<CR>
vmap <F9> <esc>:TlistToggle<CR>
imap <F9> <esc>:TlistToggle<CR>

" F12 - обозреватель файлов
nmap <F12> :Ex<cr>
vmap <F12> <esc>:Ex<cr>i
imap <F12> <esc>:Ex<cr>i

" run file with PHP CLI (CTRL-M)
:autocmd FileType php noremap <C-M> :w!<CR>:!/usr/bin/php %<CR>

" PHP parser check (CTRL-L)
:autocmd FileType php noremap <C-L> :!/usr/bin/php -l %<CR>
