local colorscheme = "tokyonight"

require("tokyonight").setup({
  -- use the "night" style, other styles are "storm" and "day"
  style = "night",
  -- disable italic for functions
  styles = {
    functions = "NONE"
  },
  sidebars = { "qf", "vista_kind", "terminal", "packer" },
  -- Change the "hint" color to the "orange" color, and make the "error" color bright red
  on_colors = function(colors)
    colors.hint = colors.orange
    colors.error = "#ff0000"
  end
})

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
