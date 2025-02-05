-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = { "html", "cssls", "gopls", "clangd", "tsserver", "basedpyright", "eslint", "luau-lsp", "clangd" }
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
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

-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }
