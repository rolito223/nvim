local cmd = vim.cmd
local opt = vim.opt

opt.termguicolors = true

cmd [[colorscheme ayu]]
require('ayu').setup({
	dark = true,
	overrides = {},
})

