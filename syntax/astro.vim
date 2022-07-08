" Vim syntax file
" Language: astro
" Maintainer: https://github.com/elel-dev
" Filenames: *.astro
" Latest Revision: 07/08/2022

if exists("b:current_syntax")
  finish
endif

runtime! syntax/typescriptreact.vim

syntax include @Typescriptreact syntax/typescriptreact.vim

let b:current_syntax = ''
unlet b:current_syntax
syntax include @Javascript syntax/javascript.vim
syntax region jsCode matchgroup=Fence start="---" end="---" containedin=@Typescriptreact contains=@Javascript

let b:current_syntax = ''
unlet b:current_syntax
syntax include @Css syntax/css.vim
syntax region cssCode matchgroup=Style start="<style>" end="</style>" containedin=@Typescriptreact contains=@Css

hi link Fence        Comment
hi link Style        Identifier

let b:current_syntax = "astro"
