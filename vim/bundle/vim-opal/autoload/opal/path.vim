" vim: et sw=2 sts=2

" #path#alternate {{{1
function! opal#path#alternate(bang) abort
  let target = expand('%:p:r') .'.'. (expand('%:e') == 'impl' ? 'sign' : 'impl')

  if !filereadable(target) && !s:yesno(target .' does not exist. Create it?')
    return
  endif

  execute 'edit' target
endfunction

" s:yesno {{{1
function! s:yesno(msg) abort
  echohl ErrorMsg
  echo '>> OPAL: '. a:msg .'  [y/n]'
  echohl None

  return (nr2char(getchar()) == 'y') ? 1 : 0
endfunction
