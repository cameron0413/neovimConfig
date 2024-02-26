print("hello")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy/nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
	end
	vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	-- List your plugins here

	{"neovim/nvim-lspconfig"},
	{"folke/lazy.nvim"},
	{"nvim-lua/plenary.nvim"},
	{"jose-elias-alvarez/null-ls.nvim"},
	{"ThePrimeagen/harpoon"},
	{"nvim-telescope/telescope.nvim"},
	{"rafamadriz/neon"},

	{
	"jose-elias-alvarez/null-ls.nvim",
	config = function()
	require("null-ls").setup({
	sources = {
	    require("null-ls").builtins.formatting.phpcsfixer.with({
		extra_args = {"--rules=@PSR12"},
	    }),
	},

	})
	end,
	},

	{
	    "kylechui/nvim-surround",
	    version = "*", -- Use for stability; omit to use `main` branch for the latest features
	    event = "VeryLazy",
	    config = function()
		require("nvim-surround").setup({
		    -- Configuration here, or leave empty to use defaults
		})
	    end
	}

})

require("null-ls").setup({
    sources = {
        require("null-ls").builtins.formatting.phpcsfixer.with({
            extra_args = {"--rules=@PSR12"},
        }),
    },
})

require'lspconfig'.intelephense.setup{}

require("cameronneovim")

vim.cmd[[colorscheme neon]]

vim.opt.tabstop = 2       -- Number of spaces that a <Tab> in the file counts for.
vim.opt.shiftwidth = 2    -- Size of an indent.
vim.opt.softtabstop = 2   -- Number of spaces a tab counts for in insert mode.
vim.opt.expandtab = true  -- Converts tabs to spaces.

vim.opt.number = true

vim.cmd[[set number]]

