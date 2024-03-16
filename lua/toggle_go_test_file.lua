local vim = vim

local function toggle_go_test_file()
  -- main.go -> main_test.go
  local current_file_dir = vim.fn.expand('%:p:h')
  local current_file_name = vim.fn.expand('%:t:r')
  local current_file_extension = vim.fn.expand('%:e')

  local test_file_name = current_file_name .. '_test.' .. current_file_extension
  local test_file_path = current_file_dir .. '/' .. test_file_name

  if vim.fn.filereadable(test_file_path) == 1 then
    vim.cmd('e ' .. test_file_path)
  else
    local test_file_content = [[package ]] .. current_file_name
    vim.fn.writefile({test_file_content}, test_file_path)
    vim.cmd('e ' .. test_file_path)
  end
end

return {
  toggle_go_test_file = toggle_go_test_file
}
