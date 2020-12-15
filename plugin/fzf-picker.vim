if exists('g:loaded_fzf_picker') && g:loaded_fzf_picker
  finish
endif

let g:loaded_fzf_picker = 1

function! FzfPick_ShellExecute(bufnum, args)
  execute join(a:args, ' ')
endfunction

let s:cmd = expand('<sfile>:p:h') .. '/fzf-picker.sh'
function! s:FzfPick() abort
  let buf = term_start(s:cmd, {
        \ "term_name": "FzfPick",
        \ "term_finish": "close",
        \ "norestore": 1,
        \ "term_api": "FzfPick_",
        \ })
endfunction
command! -nargs=* FzfPick call s:FzfPick()
