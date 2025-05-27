vim.api.nvim_create_autocmd("FileType", {
  pattern = { "go" },
  callback = function()
    vim.opt.tabstop = 4
    vim.opt.shiftwidth = 4
    vim.opt.softtabstop = 4
    vim.opt.expandtab = false  -- tab
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "yaml", "yml", "ansible", "python" },
  callback = function()
    vim.opt.expandtab = true -- space
    vim.opt.tabstop = 2
    vim.opt.shiftwidth = 2
    vim.opt.softtabstop = 2
  end,
})
