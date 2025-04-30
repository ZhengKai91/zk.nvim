-- ~/.config/nvim/lua/config/keymaps.lua
local M = {}

function M.setup()
  -- 设置 <leader>e 为切换 nvim-tree 的快捷键
  vim.api.nvim_set_keymap("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
end

return M
