return {
  {
    "sainnhe/gruvbox-material",
    enabled = true,
    priority = 1000,
    config = function()
      vim.g.gruvbox_material_transparent_background = 0
      vim.g.gruvbox_material_foreground = "mix"
      vim.g.gruvbox_material_background = "hard" -- soft, medium, hard
      vim.g.gruvbox_material_ui_contrast = "high" -- The contrast of line numbers, indent lines, etc.
      vim.g.gruvbox_material_float_style = "dim" -- Background of floating windows
      vim.g.gruvbox_material_statusline_style = "material"

      vim.g.gruvbox_material_colors_override = { bg0 = "#000000" } -- #0e1010
      vim.g.gruvbox_material_colors_override = { bg0 = "#121212" }
      vim.g.gruvbox_material_better_performance = 1

      -- vim.cmd("colorscheme gruvbox-material")
    end,
  },
  {
    "sho-87/kanagawa-paper.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("kanagawa-paper").setup({
        undercurl = true,
        transparent = false,
        gutter = false,
        dimInactive = true,
        terminalColors = true,
        commentStyle = { italic = true },
        functionStyle = { italic = false },
        keywordStyle = { italic = false, bold = false },
        statementStyle = { italic = false, bold = false },
        typeStyle = { italic = false },
        colors = { theme = {}, palette = {} },
        overrides = function()
          return {}
        end,
      })

      -- vim.cmd("colorscheme kanagawa-paper")
    end,
  },
  {
    "ilof2/posterpole.nvim",
    priority = 1000,
    config = function()
      require("posterpole").setup({
        transparent = false,
      })
      -- vim.cmd("colorscheme posterpole")
    end,
  },
  {
    "xiyaowong/transparent.nvim",
    config = function()
      require("transparent").setup({
        extra_groups = { -- table/string: additional groups that should be cleared
          -- In particular, when you set it to 'all', that means all available groups

          -- example of akinsho/nvim-bufferline.lua
          "EndOfBuffer",
          -- Make telescope transparent
          "TelescopeNormal",
          "TelescopePromptBorder",
          "TelescopeResultsBorder",
          "TelescopePreviewBorder",
          -- Make the which-key menu transparent
          "WhichKeyBorder",
          "WhichKeyNormal",
          -- Making floating window borders transparent
          "FloatBorder",
          -- Inlay hints should be transparent
          "LspInlayHint",

          "BufferLineTabClose",
          "BufferlineBufferSelected",
          "BufferLineFill",
          "BufferLineBackground",
          "BufferLineSeparator",
          "BufferLineIndicatorSelected",
          "NormalFloat", -- plugins which have float panel such as Lazy, Mason, LspInfo
          "NvimTreeNormal", -- NvimTree
          "NeoTreeSignColumn",
          "NeoTreeNormal",
          "NeoTreeNormalNC",
          "NeoTreeWinSeparator",
          "NeoTreeEndOfBuffer",
          "NeoTreeGitUnstaged",
          "NeoTreeBufferNumber",
          "Pmenu",
          "PmenuSel",
          "TablineSel",
          "TablineFill",
        },
        exclude_groups = {}, -- table: groups you don't want to clear
      })
    end,
  },
}
