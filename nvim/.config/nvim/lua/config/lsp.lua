local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

local on_attach = function(_, bufnr)
  local bufopts = { noremap = true, silent = true, buffer = bufnr }
  vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, bufopts)
  vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
  vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation, bufopts)
  vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, bufopts)
  vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, bufopts)
  vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, bufopts)
  vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, bufopts)
  vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, bufopts)
  vim.keymap.set("n", "]d", vim.diagnostic.goto_next, bufopts)
end

lspconfig.lua_ls.setup({
  capabilities = capabilities,
  settings = {
    Lua = {
      runtime = { version = "LuaJIT" },
      diagnostics = { globals = { "vim" } },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false,
      },
      telemetry = { enable = false },
    },
  },
  on_attach = on_attach,
})

lspconfig.pyright.setup({ capabilities = capabilities, on_attach = on_attach })
lspconfig.tsserver.setup({ capabilities = capabilities, on_attach = on_attach })
lspconfig.clangd.setup({ capabilities = capabilities, on_attach = on_attach })

