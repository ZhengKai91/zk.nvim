-- ~/.config/nvim/lua/plugins/init.lua
return {
  -- 语法高亮
  { import = "plugins.treesitter" },
  --文件结构浏览
  { import = "plugins.nvimtree" },
  -- 代码智能补全
  { import = "plugins.cmp" },
  -- 语言服务器配置
  { import = "plugins.lsp" },
  -- 代码对齐
  { import = "plugins.easyalign" },
  { import = "plugins.themes" },
  { import = "plugins.indent_blankline" },
  { import = "plugins.copilot" },
}
