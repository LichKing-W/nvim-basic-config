require("mason-null-ls").setup({
  ensure_installed = { "black" }
})

local null_ls = require("null-ls")

null_ls.setup({
  sources = {
    null_ls.builtins.formatting.black,
  },
})
vim.keymap.set("n", "<leader>m", function()
    vim.lsp.buf.format()
    end
)

