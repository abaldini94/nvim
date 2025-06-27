local plugins = {
	"tpope/vim-sleuth",
	require("plugins.lsp"),
	require("plugins.gitsigns"),
	require("plugins.whichkey"),
	require("plugins.telescope"),
	require("plugins.autoformat"),
	require("plugins.autocompletion"),
	require("plugins.autopairs"),
	require("plugins.colorschemes.github"),
	require("plugins.todos"),
	require("plugins.mini"),
	require("plugins.treesitter"),
	require("plugins.neotree"),
	require("plugins.toggleterm"),
	require("plugins.multicursor"),
	require("plugins.peek"),
	require("plugins.codeium"),
}

local opts = {
	ui = {
		icons = {},
	},
}

require("lazy").setup(plugins, opts)
