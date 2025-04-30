-- ~/.config/nvim/lua/plugins/lsp.lua
return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    require("mason").setup()
    require("mason-lspconfig").setup()
    local lspconfig = require("lspconfig")
    local capabilities = require("cmp_nvim_lsp").default_capabilities()
    local servers = { "lua_ls", "pyright", "clangd" }
    for _, server in ipairs(servers) do
      if server == "pyright" then
        lspconfig[server].setup({
          capabilities = capabilities,
          settings = {
            python = {
              analysis = {
                diagnosticMode = "workspace", -- 关闭诊断
                typeCheckingMode = "off",     -- 关闭类型检查
              },
            },
          },
        })
      else
        lspconfig[server].setup({
          capabilities = capabilities,
        })
      end
    end
  end,
}
