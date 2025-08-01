local plugins = {
	"tpope/vim-sleuth",
	require("plugins.lsp"),
	require("plugins.gitsigns"),
	require("plugins.whichkey"),
	require("plugins.telescope"),
	require("plugins.autoformat"),
	require("plugins.autocompletion"),
	require("plugins.colorschemes.github"),
	require("plugins.mini"),
	require("plugins.treesitter"),
	require("plugins.neotree"),
	require("plugins.toggleterm"),
	require("plugins.multicursor"),
}

local opts = {
	ui = {
		icons = {},
	},
}

require("lazy").setup(plugins, opts)
