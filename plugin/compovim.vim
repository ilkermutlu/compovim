nnoremap <unique> <Leader>cvm :call CompovimMenu()<CR>
nnoremap <unique> <Leader>cvmu :call CompovimUpdate()<CR>
nnoremap <unique> <Leader>cvmr :call CompovimRequire()<CR>
nnoremap <unique> <Leader>cvmi :call CompovimInstall()<CR>

function! CompovimUpdate() " {{{
    call s:runComposerUpdateCommand()
endfunction
" }}}

function! CompovimRequire() " {{{
    call s:runComposerRequireCommand()
endfunction
" }}}

function! CompovimInstall() " {{{
    call s:runComposerInstallCommand()
endfunction
" }}}

function! CompovimMenu() " {{{
    echohl "Composer command to execute"
    let l:choice = inputlist(["[0] Update", "[1] Require", "[2] Install"])
    if l:choice == 0
        call s:runComposerUpdateCommand()
    elseif l:choice == 1
        call s:runComposerRequireCommand()
    elseif l:choice == 2
        call s:runComposerInstallCommand()
    endif
endfunction
" }}}

function! s:runComposerUpdateCommand() " {{{
    execute '!composer update'
endfunction
" }}}

function! s:runComposerRequireCommand() " {{{
    let l:package = input('Package name?')
    execute '!composer require' l:package
endfunction
" }}}

function! s:runComposerInstallCommand() " {{{
    execute '!composer install'
endfunction
" }}}
