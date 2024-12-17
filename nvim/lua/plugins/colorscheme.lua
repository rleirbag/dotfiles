local transparent_background = true
return {
  {
    "sainnhe/gruvbox-material",
    enabled = true,
    priority = 1000,
    config = function()
      -- Configurações do Gruvbox Material
      vim.g.gruvbox_material_transparent_background = transparent_background and 1 or 0
      vim.g.gruvbox_material_foreground = "mix"
      vim.g.gruvbox_material_background = "hard"  -- soft, medium, hard
      vim.g.gruvbox_material_ui_contrast = "high" -- The contrast of line numbers, indent lines, etc.
      vim.g.gruvbox_material_float_style = "dim"  -- Background of floating windows
      vim.g.gruvbox_material_statusline_style = "material"

      vim.cmd("colorscheme gruvbox-material")

      if transparent_background then
        vim.api.nvim_set_hl(0, "NeoTreeFloatBorder", { bg = "NONE", fg = "#928374" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE", fg = "#ebdbb2" })
        vim.api.nvim_set_hl(0, "NeoTreeFloatTitle", { bg = "NONE", fg = "#fabd2f" })
      end
    end,
  },
  {
    "2nthony/vitesse.nvim",
    dependencies = {
      "tjdevries/colorbuddy.nvim",
    },
    config = function()
      require("vitesse").setup {
        comment_italics = false,
        transparent_background = true,
        transparent_float_background = true, -- aka pum(popup menu) background
        reverse_visual = false,
        dim_nc = false,
        cmp_cmdline_disable_search_highlight_group = false, -- disable search highlight group for cmp item
        -- if `transparent_float_background` false, make telescope border color same as float background
        telescope_border_follow_float_background = false,
        -- similar to above, but for lspsaga
        lspsaga_border_follow_float_background = false,
        -- diagnostic virtual text background, like error lens
        diagnostic_virtual_text_background = false,
      }

      -- vim.cmd("colorscheme vitesse")
    end
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      transparent = transparent_background
    }
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = transparent_background,
      style = "moon",
    },
  }
}
