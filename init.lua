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

vim.cmd[[set clipboard+=unnamed]]

vim.cmd[[set number]]

vim.cmd[[set nowrap]]

vim.cmd[[set mouse=]]

require("lazy").setup({
	-- List your plugins here

	{"neovim/nvim-lspconfig"},
	{"folke/lazy.nvim"},
	{"nvim-lua/plenary.nvim"},
	{"jose-elias-alvarez/null-ls.nvim"},
	{"ThePrimeagen/harpoon"},
	{"nvim-telescope/telescope.nvim"},
	{"rafamadriz/neon"},
  {"sindrets/diffview.nvim"},
  {"nvim-tree/nvim-web-devicons"},
  {"prettier/vim-prettier"},

  {"hrsh7th/nvim-cmp"},
  {"hrsh7th/cmp-buffer"},  -- Buffer completions
  {"hrsh7th/cmp-path"},    -- Path completions
  {"hrsh7th/cmp-cmdline"}, -- Command line completions
  {"hrsh7th/cmp-nvim-lsp"},  -- LSP completions
  {"saadparwaiz1/cmp_luasnip"}, -- Snippet completions
  {"L3MON4D3/LuaSnip"}, -- Snippet engine
  {"rafamadriz/friendly-snippets"}, -- A collection of snippets

  {"windwp/nvim-ts-autotag"},
  {"nvim-treesitter/nvim-treesitter"},

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
    "windwp/nvim-autopairs",
    config = function()
        require("nvim-autopairs").setup({
          check_ts = true
        })
    end
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

require'nvim-treesitter.configs'.setup {
  ensure_installed = {'html'}, -- Or specify {'html', 'javascript', 'css', ...} for only the languages you need
  highlight = {
    enable = true, -- Enable syntax highlighting
  },
  -- Add other Treesitter configurations as needed
}

require("cameronneovim")


-------- END PLUGINS -----------
---
-------- BEGIN CONFIG ----------

-- PHP snippets setup for LuaSnip
local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

ls.add_snippets("php", {
  s("if", fmt("if ({}) {{\n\t{}\n}}", {i(1), i(2)})),
  s("foreach", fmt("foreach ({} as {}) {{\n\t{}\n}}", {i(1, "$array"), i(2, "$value"), i(3)})),
  s("for", fmt("for ({}; {}; {}) {{\n\t{}\n}}", {i(1, "$i = 0"), i(2, "$i < count"), i(3, "$i++"), i(4)})),
  s("empty", fmt("empty({}) {}", {i(1, "$variable"), i(0)})),
})


local cmp = require'cmp'
cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-1),
    ['<C-f>'] = cmp.mapping.scroll_docs(1),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),  -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip', priority = 1000 },
  }, 
  {
    { name = 'buffer' },
  })
})

require'lspconfig'.intelephense.setup{}

vim.api.nvim_create_autocmd("FileType", {
  pattern = "php",
  callback = function()
    -- Add $ to the list of characters considered part of a word
    vim.opt.iskeyword:append("$")
  end,
})


vim.cmd[[colorscheme neon]]

vim.opt.tabstop = 2       -- Number of spaces that a <Tab> in the file counts for.
vim.opt.shiftwidth = 2    -- Size of an indent.
vim.opt.softtabstop = 2   -- Number of spaces a tab counts for in insert mode.
vim.opt.expandtab = true  -- Converts tabs to spaces.

vim.opt.number = true

vim.cmd [[
    highlight Normal guibg=none
    highlight NonText guibg=none
    highlight Normal ctermbg=none
    highlight NonText ctermbg=none
]]
