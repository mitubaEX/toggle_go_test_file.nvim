local vim = vim

local function _toggle_go_test_file()
  -- main.go -> main_test.go
  local current_file_dir = vim.fn.expand('%:p:h')
  local current_file_name = vim.fn.expand('%:t:r')
  local current_file_extension = vim.fn.expand('%:e')

  local test_file_name = current_file_name .. '_test.' .. current_file_extension
  local test_file_path = current_file_dir .. '/' .. test_file_name

  vim.cmd('e ' .. test_file_path)
end

local function _toggle_go_file()
  -- main_test.go -> main.go
  local current_file_dir = vim.fn.expand('%:p:h')
  local current_file_name = vim.fn.expand('%:t:r')
  local current_file_extension = vim.fn.expand('%:e')

  local main_file_name = current_file_name:gsub('_test', '')
  local main_file_path = current_file_dir .. '/' .. main_file_name .. '.' .. current_file_extension

  vim.cmd('e ' .. main_file_path)
end

local function toggle_go_test_file()
  local current_file_name = vim.fn.expand('%:t:r')
  if current_file_name:find('_test') then
    _toggle_go_file()
  else
    _toggle_go_test_file()
  end
end

return {
  toggle_go_test_file = toggle_go_test_file,
}
