au FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
au FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

au FileType html,htmljinja,htmldjango,twig,htmltwig set omnifunc=htmlcomplete#CompleteTags
au FileType css set omnifunc=csscomplete#CompleteCSS
au FileType php set omnifunc=phpcomplete#CompletePHP
au FileType javascript set omnifunc=javascriptcomplete#CompleteJS

au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery
"au BufRead,BufNewFile *.twig set ft=html.twig syntax=htmljinja
"au Filetype html,xml,xsl,twig,htmljinja,htmldjango source ~/.vim/scripts/closetag.vim

au BufRead *error.log setf apachelogs
au BufRead *access.log setf httplog
