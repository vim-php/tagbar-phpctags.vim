if !exists('g:tagbar_phpctags_bin')
    let g:tagbar_phpctags_bin = 'phpctags'
endif

let g:tagbar_type_php = {
    \ 'ctagsbin'  : tagbar_phpctags_bin,
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
