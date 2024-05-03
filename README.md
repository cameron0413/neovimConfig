This is just my humble configuration. 

### Plugins:

* [Lazy](https://github.com/folke/lazy.nvim) (as the plugin manager)
* [Plenary](https://github.com/nvim-lua/plenary.nvim)
* [Null-ls](https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/MAIN.md)
* [Harpoon](https://github.com/ThePrimeagen/harpoon)
* [nvim-surround](https://github.com/kylechui/nvim-surround)
* [nvim-autopairs](https://github.com/windwp/nvim-autopairs)
* [Neon](https://github.com/rafamadriz/neon) (as the color scheme)
* [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
* [LuaSnip](https://github.com/L3MON4D3/LuaSnip)
* [Telescope](https://github.com/nvim-telescope/telescope.nvim)
* [Diffview](https://github.com/sindrets/diffview.nvim)
* [nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
* [vim-prettier](https://github.com/prettier/vim-prettier)
* [keystrokes.nvim](https://github.com/kdheepak/keystrokes.nvim)
* [symbols-outline.nvim](https://github.com/simrat39/symbols-outline.nvim)
* [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
* [cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
* [cmp-path](https://github.com/hrsh7th/cmp-path)
* [cmp-cmdline](https://github.com/hrsh7th/cmp-cmdline)
* [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
* [cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
* [nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)
* [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
* [friendly-snippets](https://github.com/rafamadriz/friendly-snippets)

#### LSP setup for PHP:
* [nvim-cmp](https://github.com/nvim-lua/plenary.nvim)
* [cmp-buffer](https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/MAIN.md)
* [cmp-path](https://github.com/ThePrimeagen/harpoon)
* [cmp-cmdline](https://github.com/kylechui/nvim-surround)
* [cmp-nvim-lsp](https://github.com/L3MON4D3/LuaSnip) 
* [cmp_luasnip](https://github.com/L3MON4D3/LuaSnip) 
* [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
* [LuaSnip](https://github.com/L3MON4D3/LuaSnip) 


### Keyboard shortcuts:

* `[space] + pv` - File explorer
* `[ctrl] + a` - Select all text on page (same thing as `ggVG` but I like this more)
* `[ctrl] + [alt] + L` - Auto-format text according to PSR-12 standards using php-cs-fixer
* `[ctrl] + j` - scrolls down without moving the cursor
* `[ctrl] + k` - scrolls up without moving the cursor
* `[space] + pf` - find_files (via Telescope)
* `[space] + ps` - find_string (via Telescope)
* `[space] + pd` - Prompt for a directory, then search for strings within that directory (via Telescope)
* `[space] + a` - add_file (via Harpoon)
* `[ctrl] + e` - toggle_quick_menu (via Harpoon)
* `[ctrl] + h` - nav_file(1) (via Harpoon)
* `[ctrl] + t` - nav_file(2) (via Harpoon)
* `[ctrl] + n` - nav_file(3) (via Harpoon)
* `[ctrl] + s` - nav_file(4) (via Harpoon)
* `[space] + fj` - Auto-format to JSON using Prettier
* `[ctrl] + /` - Toggle double-slash comments on any lines highlighted (mostly used for me in PHP and JavaScript)
* `[ctrl] + r`, followed by `"` and `[enter]` - pastes whatever is on Neovim's clipboard into the page or global string search

### Configurations:

* `[ctrl] + c` automatically removes highlighting on text that has been searched for on the page.
* Tab width is half of its normal distance (tabstop = 2)
* Numbers are always displayed
* Background is the same as whatever your terminal is
* If you are editing a PHP file, then typing `viw` will select the entire variable name, including the $ preceding it.
* Not really a configuration, but `:VB` will enter Visual Block mode, allowing for column editing.

### Dependencies:
* Git ≥ 2.31.0 (for diffview.nvim)
* [ripgrep](https://github.com/BurntSushi/ripgrep#installation)
* Prettier
