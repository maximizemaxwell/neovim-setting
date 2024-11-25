-- EXAMPLE
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "html", "cssls", "clangd", "tsserver", "pyright", "eslint", "gopls" }

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

lspconfig.asm_lsp.setup {
  cmd = { "asm-lsp" }, -- asm-lsp 명령어
  filetypes = { "asm", "s" }, -- 어셈블리 파일 유형
  root_dir = lspconfig.util.root_pattern(".git", vim.fn.getcwd()), -- 프로젝트 루트를 설정
}

lspconfig.solidity.setup {
  cmd = { "nomicfoundation-solidity-language-server", "--stdio" },
  filetypes = { "solidity" },
  root_dir = lspconfig.util.find_git_ancestor,
  single_file_support = true,
}
-- typescript
-- lspconfig.tsserver.setup {
--on_attach = on_attach,
--on_init = on_init,
--capabilities = capabilities,
-- }
--
--rust-analyzer
