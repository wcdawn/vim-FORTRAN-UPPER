" Fortran auto uppercase

function! s:upper(k)
  if synIDattr(synIDtrans(synID(line('.'), col('.')-1, 0)), "name") !~# 'Comment\|String'
    return toupper(a:k)
  else
    return a:k " was comment or string, do nothing
  endif
endfunction

function! s:init(keywords)
  setlocal iskeyword+=-
  for k in a:keywords
    exec "iabbrev <expr> <buffer> " . k . " <SID>upper('" . k . "')"
  endfor
endfunction

let g:FORTRAN_UPPER = get(g:, "FORTRAN_UPPER", 0)

if g:FORTRAN_UPPER == 1 " SSP
  call <SID>init(fortran_upper#keywords1())
elseif g:FORTRAN_UPPER == 2 " nfherrin/OpenNodal
  call <SID>init(fortran_upper#keywords2())
elseif g:FORTRAN_UPPER == 5 " syntaxComplete#OmniSyntaxList (vim list)
  augroup FORTRAN_UPPER
    autocmd!
    autocmd Syntax <buffer> call <SID>init(syntaxcomplete#OmniSyntaxList())
  augroup END
elseif type(g:FORTRAN_UPPER) == 3 " user specified list
  call <SID>init(g:FORTRAN_UPPER)
endif
