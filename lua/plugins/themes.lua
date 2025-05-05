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
  solarized_osaka = {
    name = "craftzdog/solarized-osaka.nvim",
    config = function()
      require("solarized-osaka").setup({
        transparent = true, -- 启用透明背景
        terminal_colors = true, -- 启用终端颜色支持
        styles = {
          comments = { italic = true }, -- 斜体注释
          keywords = { italic = true }, -- 斜体关键字
        },
        sidebars = { "qf", "help" }, -- 为侧边栏窗口设置更暗的背景
      })
      vim.cmd([[colorscheme solarized-osaka]])
    end,
  },
  monokai_pro = {
    name = "loctvl842/monokai-pro.nvim",
    config = function()
      require("monokai-pro").setup({
        filter = "pro", -- 可选: spectrum, octagon, pro, machine, ristretto, coffee
        transparent = true, -- 启用透明背景
        devicons = true, -- 启用文件图标高亮
        styles = {
          comment = { italic = true }, -- 斜体注释
          keyword = { italic = true }, -- 斜体关键字
        },
        terminal_colors = true, -- 启用终端颜色支持
      })
      vim.cmd([[colorscheme monokai-pro]])
    end,
  },
}

-- 当前主题配置
local current_theme = themes.solarized_osaka -- 修改这里切换主题

return {
  current_theme.name,
  config = current_theme.config,
}
