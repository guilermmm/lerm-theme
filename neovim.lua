return {
	{
		dir = "~/.config/omarchy/themes/lerm-theme/lermtheme.nvim",
		name = "lermtheme",
		lazy = false,
		priority = 1000,
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "lermtheme",
		},
	},
}