vim.api.nvim_set_keymap("n", "<leader>cd", "<cmd>lua set_cwd_to_buffer_dir()<CR>", { noremap = true })

function set_cwd_to_buffer_dir()
  local current_buffer = vim.api.nvim_get_current_buf()
  local buffer_file_name = vim.api.nvim_buf_get_name(current_buffer)
  local buffer_dir = vim.fn.fnamemodify(buffer_file_name, ":h")
  os.execute("cd " .. buffer_dir)
end

vim.filetype.add {
  extension = {
    tf = "terraform",
  }
}
