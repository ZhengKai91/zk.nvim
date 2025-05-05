-- ~/.config/nvim/lua/plugins/copilot.lua

return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({
        -- 启用 Copilot 面板
        panel = {
          enabled = true,
          auto_refresh = false,
          keymap = {
            jump_prev = "[[",       -- 跳转到上一个建议
            jump_next = "]]",       -- 跳转到下一个建议
            accept = "<CR>",        -- 使用回车键接受建议
            refresh = "gr",         -- 使用 gr 刷新建议
            open = "<M-CR>",        -- 使用 Option + 回车键打开面板
          },
          layout = {
            position = "bottom",    -- 面板位置：底部
            ratio = 0.4,            -- 面板大小比例
          },
        },
        -- 配置代码补全建议
        suggestion = {
            enabled = true,
            auto_trigger = false,
            hide_during_completion = true,
            debounce = 75,
            trigger_on_accept = true,
            keymap = {
              accept = "<M-l>",
              accept_word = false,
              accept_line = false,
              next = "<M-]>",
              prev = "<M-[>",
              dismiss = "<C-]>",
            },
        },
        -- 支持的文件类型
        filetypes = {
          yaml = true,
          markdown = true,
          help = true,
          gitcommit = true,
          gitrebase = true,
          hgcommit = true,
          svn = true,
          cvs = true,
          ["."] = true,
        },
        -- Node.js 命令路径
        copilot_node_command = "node", -- Node.js 版本必须 >= 20
        -- 覆盖默认的服务器选项
        server_opts_overrides = {},
      })
    end,
  },
}
