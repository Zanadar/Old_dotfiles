" vim: et sw=2 sts=2

if exists('b:current_syntax')
  finish
endif

syntax clear
syntax sync fromstart

" Implementation / Signature {{{1
syntax keyword OpalFile           SIGNATURE IMPLEMENTATION          contained
syntax match   OpalFileIdentifier '\(SIGNATURE\|IMPLEMENTATION\).*' contains=OpalFile

highlight default link OpalFile           Special
highlight default link OpalFileIdentifier Identifier
" }}}

" Comment {{{1
syntax region OpalComment       start='/\*' end='\*/'
syntax region OpalCommentInline start='--'  end='$'

highlight default link OpalComment       Comment
highlight default link OpalCommentInline Comment
" }}}

" Parentheses {{{1
syntax match OpalParens '[\(,\),\[,\]]'

highlight default link OpalParens Keyword
" }}}

" Assignment {{{1
syntax match OpalAssignment '=='

highlight default link OpalAssignment Keyword
" }}}

" Import {{{1
syntax keyword OpalImport IMPORT COMPLETELY ONLY ASSERT ASSUME

highlight default link OpalImport Include
" }}}

" Type {{{1
syntax keyword OpalSort SORT DATA TYPE

highlight default link OpalSort Type
" }}}

" Denotation {{{1
syntax region OpalDenotation start='"' end='"'

highlight default link OpalDenotation String
" }}}

" Definition {{{1
syntax region OpalDefinition           start='DEF' end='=='
syntax region OpalDefinitionIdentifier matchgroup=OpalDefinition start='DEF' end='=='

highlight default link OpalDefinition           Keyword
highlight default link OpalDefinitionIdentifier Identifier
" }}}

" Function {{{1
syntax match OpalFunctionIdentifier '^FUN .\{-}:'hs=s+4,me=e-1 contained
syntax match OpalFunction           '\v(FUN|\*\*|:|-\>|\(|\))' contained contains=OpalFunctionIdentifier
syntax region OpalFunctionLine      start='^FUN' end='$'       contains=OpalFunction,OpalFunctionIdentifer

highlight default link OpalFunction           Keyword
highlight default link OpalFunctionIdentifier Special
" }}}

" Conditional {{{1
syntax keyword OpalConditional IF THEN OTHERWISE ELSE FI LET WHERE IN ANDIF ORIF AS

highlight default link OpalConditional Keyword
" }}}

let b:current_syntax = 'opal'
