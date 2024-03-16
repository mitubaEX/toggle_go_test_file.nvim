vim.api.nvim_create_user_command('ToggleGoTestFile', 'lua require("toggle_go_test_file").toggle_go_test_file()', {
  nargs = 0,
  complete = 'file',
  bang = false,
  bar = false,
  range = '',
  count = 0,
})
