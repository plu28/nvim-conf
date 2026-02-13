# nvim-conf

## Keybinding Reference

- Leader key: `<leader>` is `Space`
- Modes: `n` normal, `v` visual, `x` visual-select, `i` insert, `t` terminal
- Scope: `global` (always), `buffer-local` (depends on current buffer/plugin attach)

## Core (global)

| Key | Mode | Action | Scope | Source |
| --- | --- | --- | --- | --- |
| `<Space>` | `n`,`v` | Disabled (`<Nop>`) | global | `init.lua` |
| `<C-k>` | `n` | Half-page up and center | global | `init.lua` |
| `<C-j>` | `n` | Half-page down and center | global | `init.lua` |
| `<leader>l` | `n` | Move to right window | global | `init.lua` |
| `<leader>h` | `n` | Move to left window | global | `init.lua` |
| `<leader>j` | `n` | Move to lower window | global | `init.lua` |
| `<leader>k` | `n` | Move to upper window | global | `init.lua` |
| `<leader>vs` | `n` | Vertical split | global | `init.lua` |
| `<C-\\>` | `n` | Maximize current window width | global | `init.lua` |
| `<C-=>` | `n` | Equalize window widths | global | `init.lua` |
| `<Esc>` | `t` | Exit terminal mode | global | `init.lua` |
| `<leader>p` | `n` | Toggle alternate file | global | `init.lua` |
| `G` | `n` | Go to bottom and center | global | `init.lua` |
| `<leader>te` | `n` | Open terminal | global | `init.lua` |
| `<leader>ts` | `n` | Open terminal in vsplit | global | `init.lua` |
| `<leader>q` | `n` | Close current window | global | `init.lua` |
| `k` | `n` | Wrapped-line up when count is 0 | global | `init.lua` |
| `j` | `n` | Wrapped-line down when count is 0 | global | `init.lua` |
| `<leader>rs` | `n` | Reload `init.lua` | global | `init.lua` |
| `<leader><leader>x` | `n` | Source current file | global | `init.lua` |
| `<leader>x` | `n` | Execute current Lua line | global | `init.lua` |
| `<leader>x` | `v` | Execute selected Lua | global | `init.lua` |
| `J` | `v` | Move selection down | global | `init.lua` |
| `K` | `v` | Move selection up | global | `init.lua` |
| `<leader>P` | `x` | Paste without clobbering register | global | `init.lua` |
| `<Up>` / `<Down>` / `<Left>` / `<Right>` | `i` | Disabled (`<Nop>`) | global | `init.lua` |
| `<S-Up>` / `<S-Down>` / `<S-Left>` / `<S-Right>` | `i` | Disabled (`<Nop>`) | global | `init.lua` |
| `<leader>L` | `n` | Copy `file:line` to clipboard | global | `init.lua` |
| `<C-o>` | `i` | Jump back and center | global | `init.lua` |
| `<leader>tz` | `n` | Toggle spell check (`setlocal spell!`) | global | `init.lua` |
| `<leader>z` | `n` | Apply first spell suggestion | global | `init.lua` |

## Search and Diagnostics (Telescope + diagnostic)

| Key | Mode | Action | Scope | Source |
| --- | --- | --- | --- | --- |
| `<leader>?` | `n` | Recently opened files | global | `lua/custom/plugins/telescope.lua` |
| `<leader><space>` | `n` | Existing buffers | global | `lua/custom/plugins/telescope.lua` |
| `<leader>/` | `n` | Fuzzy search in current buffer | global | `lua/custom/plugins/telescope.lua` |
| `<leader>gf` | `n` | Git files | global | `lua/custom/plugins/telescope.lua` |
| `<leader>sf` | `n` | Find files | global | `lua/custom/plugins/telescope.lua` |
| `<leader>sh` | `n` | Help tags | global | `lua/custom/plugins/telescope.lua` |
| `<leader>sm` | `n` | Media files extension | global | `lua/custom/plugins/telescope.lua` |
| `<leader>sk` | `n` | Telescope keymaps picker | global | `lua/custom/plugins/telescope.lua` |
| `<leader>sw` | `n` | Grep current word | global | `lua/custom/plugins/telescope.lua` |
| `<leader>sg` | `n` | Live grep | global | `lua/custom/plugins/telescope.lua` |
| `<leader>sd` | `n` | Diagnostics picker | global | `lua/custom/plugins/telescope.lua` |
| `[d` | `n` | Previous diagnostic | global | `lua/custom/plugins/telescope.lua` |
| `]d` | `n` | Next diagnostic | global | `lua/custom/plugins/telescope.lua` |
| `<leader>e` | `n` | Floating diagnostic | global | `lua/custom/plugins/telescope.lua` |
| `<leader>E` | `n` | Diagnostic loclist | global | `lua/custom/plugins/telescope.lua` |

## LSP (on attach, buffer-local)

| Key | Mode | Action | Scope | Source |
| --- | --- | --- | --- | --- |
| `grn` | `n` | Rename symbol | buffer-local | `lua/custom/plugins/lsp.lua` |
| `gra` | `n`,`x` | Code action | buffer-local | `lua/custom/plugins/lsp.lua` |
| `grr` | `n` | References | buffer-local | `lua/custom/plugins/lsp.lua` |
| `gri` | `n` | Implementations | buffer-local | `lua/custom/plugins/lsp.lua` |
| `grd` | `n` | Definitions | buffer-local | `lua/custom/plugins/lsp.lua` |
| `grD` | `n` | Declaration | buffer-local | `lua/custom/plugins/lsp.lua` |
| `gO` | `n` | Document symbols | buffer-local | `lua/custom/plugins/lsp.lua` |
| `gW` | `n` | Workspace symbols | buffer-local | `lua/custom/plugins/lsp.lua` |
| `grt` | `n` | Type definitions | buffer-local | `lua/custom/plugins/lsp.lua` |
| `<leader>th` | `n` | Toggle inlay hints (if server supports it) | buffer-local | `lua/custom/plugins/lsp.lua` |

## Git (Gitsigns on attach, buffer-local)

| Key | Mode | Action | Scope | Source |
| --- | --- | --- | --- | --- |
| `<leader>gp` | `n` | Previous hunk | buffer-local | `lua/custom/plugins/git.lua` |
| `<leader>gn` | `n` | Next hunk | buffer-local | `lua/custom/plugins/git.lua` |
| `<leader>bf` | `n` | Blame file | buffer-local | `lua/custom/plugins/git.lua` |
| `<leader>bl` | `n` | Blame line | buffer-local | `lua/custom/plugins/git.lua` |
| `<leader>dt` | `n` | Diff this | buffer-local | `lua/custom/plugins/git.lua` |

## Harpoon

| Key | Mode | Action | Scope | Source |
| --- | --- | --- | --- | --- |
| `<leader>ah` | `n` | Add file to Harpoon | global | `lua/custom/plugins/harpoon.lua` |
| `<leader>vh` | `n` | Open Harpoon Telescope picker | global | `lua/custom/plugins/harpoon.lua` |
| `<leader>1`..`<leader>5` | `n` | Jump to Harpoon slot 1..5 | global | `lua/custom/plugins/harpoon.lua` |
| `<leader>m` | `n` | Toggle Harpoon quick menu | global | `lua/custom/plugins/harpoon.lua` |

## File Browser (Oil)

| Key | Mode | Action | Scope | Source |
| --- | --- | --- | --- | --- |
| `<leader>o` | `n` | Toggle Oil floating browser | global | `lua/custom/plugins/oil.lua` |
| `q` | `n` | Close Oil window | Oil buffer | `lua/custom/plugins/oil.lua` |

## Formatting

| Key | Mode | Action | Scope | Source |
| --- | --- | --- | --- | --- |
| `<leader>f` | `n` | Format buffer (Conform) | global | `lua/custom/plugins/formatting.lua` |

## LeetCode

| Key | Mode | Action | Scope | Source |
| --- | --- | --- | --- | --- |
| `<leader>Ls` | `n` | Submit | global | `lua/custom/plugins/leetcode.lua` |
| `<leader>Lt` | `n` | Test | global | `lua/custom/plugins/leetcode.lua` |
| `<leader>LL` | `n` | Change language | global | `lua/custom/plugins/leetcode.lua` |

## 99 Plugin

| Key | Mode | Action | Scope | Source |
| --- | --- | --- | --- | --- |
| `<leader>9f` | `n` | Fill in function | global | `lua/custom/plugins/99.lua` |
| `<leader>9v` | `v` | Visual agent request | global | `lua/custom/plugins/99.lua` |
| `<leader>9s` | `v` | Stop all requests | global | `lua/custom/plugins/99.lua` |
| `<leader>9fd` | `n` | Fill in function (debug rule flow) | global | `lua/custom/plugins/99.lua` |

## Treesitter (configured keymaps)

| Key | Mode | Action | Scope | Source |
| --- | --- | --- | --- | --- |
| `<C-Space>` | `n` | Init/incremental selection | Treesitter selection | `lua/custom/plugins/treesitter.lua` |
| `<C-s>` | `n` | Increment to scope | Treesitter selection | `lua/custom/plugins/treesitter.lua` |
| `<M-Space>` | `n` | Decrement selection | Treesitter selection | `lua/custom/plugins/treesitter.lua` |
| `aa` / `ia` | operator/visual | Parameter outer/inner | Treesitter textobject | `lua/custom/plugins/treesitter.lua` |
| `af` / `if` | operator/visual | Function outer/inner | Treesitter textobject | `lua/custom/plugins/treesitter.lua` |
| `ac` / `ic` | operator/visual | Class outer/inner | Treesitter textobject | `lua/custom/plugins/treesitter.lua` |
| `]m` / `[m` | `n` | Next/prev function start | Treesitter move | `lua/custom/plugins/treesitter.lua` |
| `]]` / `[[` | `n` | Next/prev class start | Treesitter move | `lua/custom/plugins/treesitter.lua` |
| `]M` / `[M` | `n` | Next/prev function end | Treesitter move | `lua/custom/plugins/treesitter.lua` |
| `][` / `[]` | `n` | Next/prev class end | Treesitter move | `lua/custom/plugins/treesitter.lua` |
| `<leader>a` / `<leader>A` | `n` | Swap parameter next/prev | Treesitter swap | `lua/custom/plugins/treesitter.lua` |

## nvim-cmp (configured completion mappings)

| Key | Mode | Action | Scope | Source |
| --- | --- | --- | --- | --- |
| `<C-n>` / `<C-p>` | `i`,`s` | Select next/prev completion item | cmp menu | `lua/custom/plugins/cmp.lua` |
| `<C-d>` / `<C-f>` | `i`,`s` | Scroll docs | cmp menu | `lua/custom/plugins/cmp.lua` |
| `<C-Space>` | `i`,`s` | Trigger completion | cmp menu | `lua/custom/plugins/cmp.lua` |
| `<C-y>` | `i`,`s` | Confirm completion | cmp menu | `lua/custom/plugins/cmp.lua` |
| `<Tab>` / `<S-Tab>` | `i`,`s` | Next/prev item or snippet jump | cmp/snippet | `lua/custom/plugins/cmp.lua` |

## Main Plugin Defaults (enabled plugins, not explicitly remapped here)

| Key | Mode | Action | Scope | Plugin |
| --- | --- | --- | --- | --- |
| `gcc` | `n` | Toggle comment on current line | global | `numToStr/Comment.nvim` |
| `gc{motion}` / `gc` (visual) | operator/visual | Toggle linewise comment | global | `numToStr/Comment.nvim` |
| `gbc` | `n` | Toggle block comment on current line | global | `numToStr/Comment.nvim` |
| `gb{motion}` / `gb` (visual) | operator/visual | Toggle blockwise comment | global | `numToStr/Comment.nvim` |


