	  ___  ____  ____  ____  _
	 / _ \| __ )| __ )|  _ \( )___
	| | | |  _ \|  _ \| |_) |// __|
	| |_| | |_) | |_) |  _ <  \__ \
	 \__\_\____/|____/|_| \_\ |___/

				 _
		 __   __(_)_ __ ___
		 \ \ / /| | '_ ` _ \
		  \ V / | | | | | | |
		   \_/  |_|_| |_| |_|

Install
-------

```bash
cd ~
git clone --recursive git://github.com/qbbr/dotvim.git .vim
ln -s .vim/.vimrc
ln -s .vim/.gvimrc
```

Bundles
-------

`SearchComplete` - табуляция при поиске  
`bufexplorer` - удобное переключение между буферами  
`closetag` - закрытие html тегов  
`command-t` - быстрый поиск фалов  
`css-color` - визуальное отображение цвета в CSS  
`dbtext` - SQL клиент  
`delimitMate` - автозакрытие кавычек, скобок и т.д  
`fugitive` - работа с GIT  
`gundo` - визуальный менеджер истории изменения файла в виде дерева  
`html5-syntax` - HTML5 синтаксис  
`json` - подсветка JSON файлов  
`less` - подсветка less файлов  
`markdown` - подсветка markdowm файлов  
`marksbrowser` - графический менеджер марок  
`matchit` - расширенный %  
`nerdcommenter` - комментирование кода  
`nerdtree` - файловый менеджер в виде дерева  
`PIV` - PHP Integration for VIM  
`repeat` - повторение операций  
`snipmate` - поддержка сниппетов  
`supertab` - autocomplete по табу  
`surround`  
`tabular` - выравнивание кода  
`taglist`  - список классов, методов в файле
`tasklist` - список заданий (TODO, FIXME)  
`unimpaired`  
`vim-symfony` - snippets for symfony2  
`vim-twig` - подсветка twig файлов и snippets for snipmate  
`zencoding` - ускоренное написание html  

Hotkeys
-------

`,` - &lt;leader&gt;

`<F3>` - Gundo  
`<F4>` - NERDTree  
`<F5>` - BufExplorer  
`<F6>` - prev buffer  
`<F7>` - next buffer  
`<F8>` - MarksBrowser  
`<F9>` - TList  
`<F10>` - TaskList  
`<F12>` - Ex

`<TAB>` - атозаполнение ключевого слова (supertab)

`/` - поиск с переключением по &lt;TAB&gt; (SearchComplete)  
`;` - поиск и замена слова под курсором

`<C-Up>`  - переместить строку или множество выделенных строк вверх на одну строку  
`<C-Down>` - переместить строку или множество выделенных строк вниз на одну строку

`,c<space>` - закомментировать/раскомментировать код

`C-y,` - zencoding  
`C-_` - закрыть html тэг (closetag)  
`,x` - отформатировать выделенный участок html/xml кода (http://tidy.sourceforge.net/)

`_$` - удалить лишние отступы в тексте (StripTrailingWhitespaces)

`,t` - command-t, быстрый поиск файлов (нужен Ruby)

###dbtext

`,se` - выполнить sql запрос и показать результат  
`,st` - показать содержимое таблицы, название которой находится под курсором  
`,sT` - тоже самое что и `,st`, только спросит сколько возвращать строк (LIMIT)  
`,sta` - показать содержимое таблицы, будет предложено ввести имя таблицы  
`,sdt` - показать структуру таблицы, название которой находится под курсором  
`,slt` - показать список всех таблиц  
`,slp` - показать список процедур  
`,slv` - показать список view  
`,slc` - скопировать в буфер название колонок таблицы (одной строкой через запятую)

В окне результата:

`q` - закрыть  
`R` - повторить запрос  
`<Space>` - при использовании вертикального окна переключает ширину, чтобы сделать его более удобным для чтения

Автозаполнение:

`C-X C-O` - полный путь (название БД + название таблицы)  
`C-X C-K` - название таблиц

В запросе можно использовать переменные (?, @var, :var, $var),
перед выполнением VIM предложит ввести их значения.

configure dbtext
----------------

```bash
cd .vim
cp dbextconfig.def.vim dbextconfig.vim
vim dbextconfig.vim
```

install spell
-------------

`:set spell`
