vim.api.nvim_create_autocmd({ "BufEnter" }, {
    pattern = "*",
    callback = function()
        vim.opt.formatoptions = vim.opt.formatoptions - { "c", "r", "o" }
    end,
})
-- Normalize paths for Windows buffers
if vim.fn.has("win32") == 1 then
  vim.api.nvim_create_autocmd({ "BufAdd" }, {
    callback = function()
      local name = vim.api.nvim_buf_get_name(0)
      if name:sub(2, 2) == ":" then
        name = name:gsub("\\", "/"):gsub("^%l", string.upper)
        vim.api.nvim_buf_set_name(0, name)
      end
    end,
  })
end

