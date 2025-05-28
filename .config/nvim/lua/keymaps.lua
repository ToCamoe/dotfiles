vim.g.mapleader = " "
-- explorer
vim.keymap.set('n', '<leader>e', ':Neotree toggle<CR>', { desc = 'Toggle NeoTree' })
-- find
vim.keymap.set('n', '<leader>f', ':Telescope find_files<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>p', ':Telescope projects<CR>', { noremap = true, silent = true })
vim.keymap.set("n", "<leader>ld", ":Telescope diagnostics<CR>", { noremap = true, silent = true })
-- switch tab
vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>", { silent = true })
vim.keymap.set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { silent = true })

vim.keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<cr>", {silent = true, noremap = true})
