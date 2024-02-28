local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

vim.lsp.set_log_level("debug")

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = { "clangd", "gopls" },
  handlers = {
    lsp_zero.default_setup,
  },
})


