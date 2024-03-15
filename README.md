This is just my humble configuration. 

### Plugins:

* [Lazy](https://github.com/folke/lazy.nvim) (as the plugin manager) 
* [Plenary](https://github.com/nvim-lua/plenary.nvim)
* [Null-ls](https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/MAIN.md)
* [Harpoon](https://github.com/ThePrimeagen/harpoon)
* [nvim-surround](https://github.com/kylechui/nvim-surround)
* [nvim-autopairs](https://github.com/windwp/nvim-autopairs)
* [neon](https://github.com/rafamadriz/neon) (as the color scheme)

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
* `[space] + a` - add_file (via Harpoon)
* `[ctrl] + e` - toggle_quick_menu (via Harpoon)
* `[ctrl] + h` - nav_file(1) (via Harpoon)
* `[ctrl] + t` - nav_file(2) (via Harpoon)
* `[ctrl] + n` - nav_file(3) (via Harpoon)
* `[ctrl] + s` - nav_file(4) (via Harpoon)

### Configurations:

* `[ctrl] + c` automatically removes highlighting on text that has been searched for on the page.
* Tab width is half of its normal distance (tabstop = 2)
* Numbers are always displayed
* Background is the same as whatever your terminal is
* If you are editing a PHP file, then typing `viw` will select the entire variable name, including the $ preceding it.

### Dependencies:
* Git ≥ 2.31.0 (for diffview.nvim)
* [ripgrep](https://github.com/BurntSushi/ripgrep#installation)
