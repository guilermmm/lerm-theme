# LermTheme

Dark theme for [Omarchy](https://omarchy.com) (Arch Linux + Hyprland), based on the [J-Artur](https://marketplace.visualstudio.com/items?itemName=jartur.j-artur-theme) VS Code theme.

Deep dark background with blue accent and vibrant syntax colors — designed for long coding sessions.

## Preview

| Element | Color | Hex |
|---|---|---|
| Background | ![#111316](https://placehold.co/16x16/111316/111316) | `#111316` |
| Foreground | ![#A3ABB8](https://placehold.co/16x16/A3ABB8/A3ABB8) | `#A3ABB8` |
| Accent | ![#3b82f6](https://placehold.co/16x16/3b82f6/3b82f6) | `#3b82f6` |
| Selection | ![#2F343C](https://placehold.co/16x16/2F343C/2F343C) | `#2F343C` |
| Green | ![#6CDD5F](https://placehold.co/16x16/6CDD5F/6CDD5F) | `#6CDD5F` |
| Yellow | ![#F1FA8C](https://placehold.co/16x16/F1FA8C/F1FA8C) | `#F1FA8C` |
| Red | ![#e05561](https://placehold.co/16x16/e05561/e05561) | `#e05561` |
| Magenta | ![#FF79C6](https://placehold.co/16x16/FF79C6/FF79C6) | `#FF79C6` |
| Cyan | ![#8BE9FD](https://placehold.co/16x16/8BE9FD/8BE9FD) | `#8BE9FD` |

## Installation

### Via `omarchy-theme-install` (recommended)

```bash
omarchy-theme-install https://github.com/guilermmm/lerm-theme
```

This clones the repository directly into `~/.config/omarchy/themes/lerm-theme/` and activates the theme automatically.

### Manual

```bash
git clone https://github.com/guilermmm/lerm-theme ~/.config/omarchy/themes/lerm-theme
omarchy-theme-set lerm-theme
```

## What's Included

The theme covers all visual components of Omarchy:

| File | Component |
|---|---|
| `colors.toml` | Base color palette (used by all components) |
| `alacritty.toml` | Alacritty terminal |
| `ghostty.conf` | Ghostty terminal |
| `kitty.conf` | Kitty terminal |
| `warp.yaml` | Warp terminal |
| `hyprland.conf` | Hyprland borders and decorations |
| `hyprlock.conf` | Lock screen |
| `waybar.css` | Waybar status bar |
| `walker.css` | Walker app launcher |
| `wofi.css` | Wofi app launcher |
| `mako.ini` | Mako notifications |
| `swayosd.css` | SwayOSD overlay |
| `btop.theme` | btop system monitor |
| `vscode.json` | VS Code |
| `chromium.theme` | Chromium |
| `icons.theme` | Icon pack |
| `neovim.lua` | LazyVim spec for the colorscheme |
| `lermtheme.nvim/` | Neovim plugin with full highlight groups |
| `backgrounds/` | Wallpapers |

## Neovim Colorscheme

The theme includes a full Neovim colorscheme with support for:

- Treesitter (semantic syntax highlighting)
- LSP Semantic Tokens
- Diagnostics (error, warn, info, hint)
- Plugins: Telescope, NeoTree, GitSigns, Cmp, Which Key, Lazy, Mini, Noice/Notify, Dashboard, Indent Blankline

The `neovim.lua` at the theme root is the LazyVim spec that points to the local plugin in `lermtheme.nvim/`. `omarchy-theme-set` handles loading it automatically.

## Structure

```
lerm-theme/
├── backgrounds/            # Theme wallpapers
├── lermtheme.nvim/         # Neovim plugin (full colorscheme)
│   ├── colors/
│   │   └── lermtheme.lua
│   └── lua/
│       └── lermtheme/
│           └── init.lua
├── colors.toml             # Base palette
├── alacritty.toml          # Alacritty terminal
├── ghostty.conf            # Ghostty terminal
├── kitty.conf              # Kitty terminal
├── warp.yaml               # Warp terminal
├── hyprland.conf           # Hyprland borders
├── hyprlock.conf           # Lock screen
├── waybar.css              # Status bar
├── walker.css              # Walker app launcher
├── wofi.css                # Wofi app launcher
├── mako.ini                # Notifications
├── swayosd.css             # OSD overlay
├── btop.theme              # System monitor
├── neovim.lua              # LazyVim spec
├── vscode.json             # VS Code
├── chromium.theme          # Chromium
├── icons.theme             # Icons
└── README.md
```

## Credits

- Color palette based on the [J-Artur](https://marketplace.visualstudio.com/items?itemName=jartur.j-artur-theme) VS Code theme
- Built for [Omarchy](https://omarchy.com) by [@lerm](https://github.com/lerm)
