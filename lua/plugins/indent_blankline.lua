-- ~/.config/nvim/lua/plugins/indent_blankline.lua
return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  opts = {
    indent = {
      char = "¦", -- 使用虚线字符
    },
    scope = {
      enabled = true, -- 启用作用域缩进线
    },
    exclude = {
      filetypes = { "help", "dashboard", "packer" }, -- 排除某些文件类型
      buftypes = { "terminal", "nofile" }, -- 排除某些缓冲区类型
    },
  },
  ft = { "python" }, -- 只在 Python 文件中加载
}
