
-- ~/.config/nvim/lua/config/options.lua
local M = {}

function M.setup()
	-- 设置 leader 键为空格
	vim.g.mapleader = " "
	 -- 启用系统剪贴板
     --vim.opt.clipboard = "unnamedplus"
	
	-- 可选：如果你希望在终端中使用鼠标选择文本，可以启用以下设置
    --vim.opt.mouse = "a"
    
	--消除行首W
	vim.opt.signcolumn = "no"
	
	vim.opt.number = true
	vim.opt.relativenumber = true
	
	vim.opt.tabstop = 4
	vim.opt.softtabstop = 4
	vim.opt.shiftwidth = 4
	vim.opt.expandtab = true
	
	
	
end

return M
