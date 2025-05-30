vim.g.mapleader = " "
-- explorer
vim.keymap.set('n', '<leader>e', ':Neotree toggle<CR>', { desc = 'Toggle NeoTree' })
-- find
vim.keymap.set('n', '<leader>f', ':Telescope find_files<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>p', ':Telescope projects<CR>', { noremap = true, silent = true })
vim.keymap.set("n", "<leader>ld", ":Telescope diagnostics<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>tb", function()
  require("telescope").extensions.file_browser.file_browser({
    path = "%:p:h",           -- текущая директория файла
    select_buffer = true,
  })
end, { desc = "📁 Telescope File Browser" })
-- switch tab
vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>", { silent = true })
vim.keymap.set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { silent = true })

vim.keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<cr>", {silent = true, noremap = true})
-- markdown
vim.keymap.set("n", "<leader>mp", "<cmd>MarkdownPreview<CR>", { desc = "Markdown Preview" })
vim.keymap.set("n", "<leader>mc", "<cmd>MarkdownPreviewStop<CR>", { desc = "Close Markdown Preview" })
-- terminal
-- <leader>gg — lazygit
vim.keymap.set("n", "<leader>gg", ToggleLazyGit, { noremap = true, silent = true, desc = "Toggle LazyGit",})
