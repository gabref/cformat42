local M = {}

local config = require('cformat42.config')

local api = vim.api

M.set_equalprg = function (formatter)
	local current_buf = api.nvim_get_current_buf()
	api.nvim_set_option_value('equalprg', formatter, { buf = current_buf })
end

M.format = function ()
	local opts = config.opts
	local ft = vim.bo.filetype

	if opts.filetypes[ft] then
		M.set_equalprg(opts.formatter)
		api.nvim_feedkeys("gg=G", "n", true)
	else
		vim.notify("Unsopported file type: " .. ft, vim.log.levels.WARN)
	end
end

M.setup_commands = function ()
	api.nvim_create_user_command("CFormat42", M.format, {})
end

return M
