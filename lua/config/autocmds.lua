-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
vim.api.nvim_create_autocmd({ "FileType" }, {
    pattern = { "c", "cc", "cpp", "h", "hpp", "md", "txt", "c.snippets", "cpp.snippets", "lua" },
    callback = function()
        vim.b.autoformat = true
        vim.opt_global.expandtab = true
        vim.opt_global.tabstop = 4
        vim.opt_global.shiftwidth = 4
        vim.opt_global.softtabstop = 4
    end,
})
