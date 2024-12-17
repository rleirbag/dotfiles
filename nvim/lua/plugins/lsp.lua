return {
  "neovim/nvim-lspconfig", -- Configuração do LSP
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local lspconfig = require("lspconfig")

    -- Habilitar o LSP para Python (usando pyright)
    lspconfig.pyright.setup({
      on_attach = function(client, bufnr)
        -- Caso o LSP suporte, ativa o format on save antes de salvar
        if client.server_capabilities.documentFormattingProvider then
          vim.api.nvim_create_autocmd("BufWritePre", {
            buffer = bufnr,
            callback = function()
              -- Formatar o documento antes de salvar
              vim.lsp.buf.format({ async = false })
            end,
          })
        end
      end,
    })

    -- Habilitar o LSP para Lua (usando lua_ls)
    lspconfig.lua_ls.setup({
      on_attach = function(client, bufnr)
        -- Caso o LSP suporte, ativa o format on save antes de salvar
        if client.server_capabilities.documentFormattingProvider then
          vim.api.nvim_create_autocmd("BufWritePre", {
            buffer = bufnr,
            callback = function()
              -- Formatar o documento antes de salvar
              vim.lsp.buf.format({ async = false })
            end,
          })
        end
      end,
    })
  end,
}
