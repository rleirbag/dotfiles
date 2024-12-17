if vim.g.neovide then
  vim.o.guifont                          = "BlexMono Nerd Font"

  -- Helper function for transparency formatting
  local alpha                            = function()
    return string.format("%x", math.floor(255 * vim.g.transparency or 0.8))
  end
  -- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
  vim.g.neovide_transparency             = 0.25
  vim.g.transparency                     = 0.8
  vim.g.neovide_background_color         = "#0f1117" .. alpha()
  vim.g.neovide_window_blurred           = true
  vim.g.neovide_unlink_border_highlights = true
  vim.g.neovide_floating_blur            = 0
  vim.g.neovide_window_floating_opacity  = 0.8
  vim.g.no_multigrid                     = false

  -- Disable mini.animate with neovide
  vim.g.minianimate_disable              = true

  vim.g.neovide_remember_window_size     = true
  vim.g.neovide_fullscreen               = false
  function _G.toggle_full_screen() vim.g.neovide_fullscreen = not vim.g.neovide_fullscreen end

  ---@param delta number
  local function change_font(delta)
    font_size = font_size + delta
  end
end
---
