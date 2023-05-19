local mapper = function(mode, key, result)
	vim.api.nvim_set_keymap(mode, key, result, {noremap = true, silent = true})
end

vim.g.mapleader = ' '

mapper("n","w", ":w<CR>")
mapper("n","q", ":q<CR>")
mapper("n","<Leader>qq", ":q!<CR>")
mapper("n","tt", ":t.<CR>")
mapper("n","gt", ":NvimTreeOpen<CR>")
mapper("n","gC", ":NvimTreeClose<CR>")
--New Tab
mapper("n", "<leader>ta", ":$tabnew<CR>")
--Close Tab
mapper("n", "<leader>tc", ":tabclose<CR>")
--TabOnly?
mapper("n", "<leader>to", ":tabonly<CR>")
--NextTab
mapper("n", "<leader>tn", ":tabn<CR>")
--PreviousTab
mapper("n", "<leader>tp", ":tabp<CR>")
-- move current tab to previous position
mapper("n", "<leader>tmp", ":-tabmove<CR>")
-- move current tab to next position
mapper("n", "<leader>tmn", ":+tabmove<CR>")
