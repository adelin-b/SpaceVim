let s:coc_explorer = {
      \}

if get(g:, 'spacevim_filetree_direction', 'right') ==# 'right'
  let s:coc_explorer.position = 'right'
else
  let g:NERDTreeWinPos = 'left'

let s:coc_explorer.buffer.showHiddenBuffers = get(g:, '_spacevim_filetree_show_hidden_files', 0)


augroup spacevim_coc_explorer
  autocmd!
  autocmd! User CocNvimInit :call coc#config("explorer", s:coc_explorer)
augroup END
