" vim: et sw=2 sts=2

" #file#init()
function! opal#file#init()
  if expand('%:e') == 'impl'
    call append(0, ['IMPLEMENTATION '. expand('%:t:r'), ''])
  else
    call append(0, ['SIGNATURE '. expand('%:t:r'), ''])
  endif
endfunction
