return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require('nvim-treesitter.configs').setup {
        ensure_installed = { "lua", "python", "markdown", "vimdoc", "vim" },
        highlight = {
          enable = true,
        },
        indent = {
          enable = true,
        },
        aditional_vim_regex_highlighting = true,
      }
    end
  }
}
