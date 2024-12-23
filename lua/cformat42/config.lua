local M = {}

M.defaults = {
	formatter = "c_formatter_42",
	filetypes = { c = true, h = true, cpp = true, hpp = true },
}

M.opts = {}

M.setup = function (opts)
	M.opts = vim.tbl_extend("force", M.defaults, opts or {})
	if vim.fn.executable(M.opts.formatter) == 0 then
		vim.notify("Installing c_formatter_42...", vim.log.levels.INFO)
		os.execute("pip3 install c-formatter-42")
	end
end

return M
