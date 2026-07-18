-- Adds Line Number
vim.opt.number = true

-- Highlight when yanking(copying) text
vim.api.nvim_create_autocmd('TextYankPost', {
	desc = 'Highlight when yanking(copying) text',
	group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true}),
	callback = function()
		vim.hl.on_yank()
	end,})

vim.opt.clipboard = "unnamedplus"
vim.cmd("colorscheme slate")
