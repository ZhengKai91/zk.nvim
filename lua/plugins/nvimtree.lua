-- ~/.config/nvim/lua/plugins/nvimtree.lua
-- ~/.config/nvim/lua/plugins/nvimtree.lua
return {
  "nvim-tree/nvim-tree.lua",
  cmd = "NvimTreeToggle",
  config = function()
    require("nvim-tree").setup()
    -- 设置快捷键
    vim.api.nvim_set_keymap("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
  end,
}
