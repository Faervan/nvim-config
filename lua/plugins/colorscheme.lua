return {
    {
	"loctvl842/monokai-pro.nvim",
	lazy = false,
	priority = 1000,
	config = function()
	    require("monokai-pro").setup({
	        -- ... your config
	    })
	    vim.cmd([[colorscheme monokai-pro]])
	end,
    },
    {
        "xiyaowong/transparent.nvim",
        lazy = false,
        priority = 999,
    },
} 
