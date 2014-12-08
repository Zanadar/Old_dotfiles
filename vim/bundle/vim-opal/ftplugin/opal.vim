" vim: et sw=2 sts=2

if exists('b:loaded_opal') || &compatible
  finish
endif
let b:loaded_opal = 1

if !exists('opal')
  let opal = {}
endif

if line2byte('$') == -1
  call opal#file#init()
endif

command! -buffer -bar -bang A call opal#path#alternate(<bang>0)
