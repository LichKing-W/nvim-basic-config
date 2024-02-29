vim.api.nvim_create_autocmd({ "BufEnter" }, {
    pattern = "*",
    callback = function()
        vim.opt.formatoptions = vim.opt.formatoptions - { "c", "r", "o" }
    end,
})
vim.api.nvim_create_autocmd("FileType", {
    pattern = "python",
    callback = function()
        vim.api.nvim_buf_set_keymap(
            0,
            "n",
            "<F6>",
            ":w<CR>:!python %<CR>",
            {silent = true, noremap=true}
        )
    end,
})
vim.api.nvim_create_autocmd(
    "BufWritePre",
    {
        pattern = "*.py",
        callback = function()
            vim.lsp.buf.format()
        end,
    }
)
