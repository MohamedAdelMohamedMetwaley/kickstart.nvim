vim.g.augment_workspace_folders = { '~/projects/webprojects/memohadith/', '~/projects/webprojects/prayertimez/' }

vim.keymap.set('i', '<c-t>', '<cmd>call augment#Accept()<cr>')

return {
  'augmentcode/augment.vim',
}
