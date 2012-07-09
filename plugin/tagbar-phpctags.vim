let g:tagbar_type_php = {
    \ 'ctagsbin'  : 'phpctags',
    \ 'ctagsargs' : '',
    \ 'kinds'     : [
        \ 'd:Constants:0',
        \ 'v:Variables:0',
        \ 'f:Functions:0',
        \ 'i:Interfaces:0',
        \ 'c:AllClasses:0',
    \ ],
    \ 'sro'        : '::',
    \ 'kind2scope' : {
        \ 'c' : 'class',
        \ 'f' : 'function',
        \ 'i' : 'interface'
    \ },
    \ 'scope2kind' : {
        \ 'class'    : 'c',
        \ 'function' : 'f',
        \ 'interface': 'i'
    \ }
\ }
