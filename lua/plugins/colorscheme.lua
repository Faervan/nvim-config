return {
    {
	--"loctvl842/monokai-pro.nvim",
    "folke/tokyonight.nvim",
    --"luisiacc/the-matrix.nvim",
	lazy = false,
	priority = 1000,
	config = function()
	    --require("monokai-pro").setup({
	        -- ... your config
	    --})
	    --vim.cmd([[colorscheme thematrix]])
        vim.cmd[[colorscheme tokyonight]]
	end,
    },
    {
        "xiyaowong/transparent.nvim",
        lazy = false,
        priority = 999,
    },
} 
