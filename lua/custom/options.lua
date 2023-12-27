local o = vim.opt

o.scrolloff = 5
o.relativenumber = true

o.splitright = true
o.splitbelow = true
o.undofile = true
o.autoread = true

o.winbar = '%=%m %f'

local toggle_cursorline = vim.api.nvim_create_augroup('ToggleCursorline', { clear = true })
vim.api.nvim_create_autocmd('BufEnter', {
	callback = function ()
		o.cursorline = true
	end,
	group = toggle_cursorline,
	pattern = '*',
})
vim.api.nvim_create_autocmd('BufLeave', {
	callback = function ()
		o.cursorline = false
	end,
	group = toggle_cursorline,
	pattern = '*',
})
