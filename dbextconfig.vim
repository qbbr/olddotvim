" dbext config

" 'type=<DRIVER>:user=<USER>:passwd=<PSSWD>:dbname=<DBNAME>'
" dbname - optional
let g:dbext_default_profile_mysql_local = 'type=MYSQL:user=qbbr:passwd=qbbr123'
map <leader>l :DBListTable<CR>
