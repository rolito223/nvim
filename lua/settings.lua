--Neovim API alias
local cmd = vim.cmd
local exec = vim.api.nvim_exec
local fn = vim.fn
local g = vim.g
local opt = vim.opt


--General
g.mapleader = ':'
g.python3_host_prog = '/usr/bin/python3'


--Clipboard
g.clipboard = {
	name = 'myClipboard',
	copy = {
		['+'] = {'xclip', '-selection', 'clipboard', '-in'},
		['*'] = {'xclip', '-selection', 'primary', '-in'},
	},
	paste ={

		['+'] = {'xclip', '-selection', 'clipboard', '-in'},
		['*'] = {'xclip', '-selection', 'primary', '-in'},
	},
	cache_enabled = true,
}

--UI
opt.number = true
opt.relativenumber = true
