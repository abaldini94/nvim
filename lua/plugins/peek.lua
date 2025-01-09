return {
	"toppair/peek.nvim",
	build = "deno task --quiet build:fast",
	keys = {
		{
			"<leader>op",
			function()
				local peek = require("peek")
				if peek.is_open() then
					peek.close()
				else
					peek.open()
				end
			end,
			desc = "Peek (Markdown Preview)",
		},
	},
	opts = {
		app = 'browser', -- 'browser' (default), 'webview'
		filetype = { 'markdown' }, -- list of filetypes to recognize as markdown
		-- relevant if app is 'webview'
		theme = 'dark', -- 'dark' or 'light'
		update_on_change = true,
	},
	init = function()
		-- Esegui il comando solo se Deno è installato
		if vim.fn.executable('deno') == 1 then
			vim.api.nvim_create_user_command('PeekOpen', require('peek').open, {})
			vim.api.nvim_create_user_command('PeekClose', require('peek').close, {})
		end
	end,
}
