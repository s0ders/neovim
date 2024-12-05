# NvChad custom configuration

**Having an issue?** Check what is going wrong with `:checkhealth`.

This configuration is built for [NvChad](https://nvchad.com) and optimized for Go development but can be adapted to any purpose by customizing plugins.

### Prerequisites
 - Install [Ripgrep](https://github.com/BurntSushi/ripgrep) for telescope
 - Install a [Nerd Font](https://www.nerdfonts.com/font-downloads) for icons

### Preferences

- Theme: `nightfox`
- Font:  [JetBrainsMono](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/JetBrainsMono.zip)

### Pre-configured plugins

The plugins are pre-configured with the settings indicated bellow.

- Treesitter: go, lua, bash, html, css, js, yaml, json, sql, etc.
- Mason (LSP, DAP, linters) : gopls, gofumpt, goimports, golines, delve, marksman
- Null-ls (execution on save): gofumpt, goimports_reviser, golines

### Post-install steps

- `:MasonInstallAll` to install the pre-configured LSP, DAP and linters

### Custom Mappings and Useful Keys

| Macro         | Description                       |
| ------------- | --------------------------------- |
| `<leader>ww`  | splits window vertically          |
| `<leader>wq`  | quit current window               |
| `<leader>gc`  | git commits using Telescope       |
| `<leader>gb`  | git branches in Telescope         |
| `<leader>gt`  | git status in Telescope           |
| `<leeader>cs` | symbols outline                   |
| `<leader>td`  | show todos in Telescope           |
| `<leader>tt`  | open troubles window              |
| `<leader>ff`  | file searcher                     |
| `<leader>fw`  | live grep                         |
| `<leader>h`   | open terminal                     |
| `<C-x>`       | close terminal mode               |
| `<C-n>`       | open nvim tree                    |
| `<leader>e`   | focus to nvim tree                |
| `<leader>x`   | close buffer                      |
| `<Tab>`       | switch buffer tab                 |
| `K`           | display variable type on hovering |
