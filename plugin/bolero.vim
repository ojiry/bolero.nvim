if exists('g:loaded_bolero')
  finish
endif
let g:loaded_bolero = 1

function! s:RequireBolero(host) abort
  return jobstart(['bolero'], { 'rpc': v:true })
endfunction

call remote#host#Register('bolero', 'x', function('s:RequireBolero'))
call remote#host#RegisterPlugin('bolero', '0', [
  \ {'type': 'command', 'name': 'Hello', 'sync': 1, 'opts': {}},
  \ ])
