local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

-- init.lua
require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "clangd" }
})

local lspconfig = require('lspconfig')

lspconfig.clangd.setup {}
require "user.lsp.mason"
require("user.lsp.handlers").setup()
require "user.lsp.null-ls"
