-- ~/.config/nvim/lua/plugins/themes.lua
local themes = {
  tokyonight = {
    name = "folke/tokyonight.nvim",
    config = function()
      vim.cmd([[colorscheme tokyonight]])
      vim.g.tokyonight_style = "night" -- 可选: storm, night, moon, day
      vim.g.tokyonight_italic_comments = true
      vim.g.tokyonight_italic_keywords = true
      vim.g.tokyonight_transparent = true
    end,
  },
}

-- 当前主题配置
local current_theme = themes.tokyonight -- 修改这里切换主题

return {
  current_theme.name,
  config = current_theme.config,
}
