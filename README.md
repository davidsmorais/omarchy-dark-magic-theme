# Dark Magic Theme

A dark Omarchy theme with mint accent (#66eeaa) and blue secondary (#6bc7f5).

## Preview

![Dark Magic](preview.png)
![Dark Magic Locked](preview-unlock.png)

## Installation

### Omarchy Theme

Install directly from this repo:

```bash
omarchy theme install https://github.com/davidsmorais/omarchy-dark-magic-theme
```

Or use the Omarchy menu: `Super + Space` → `Install > Style > Theme`, then paste the repo URL.

Once installed, activate it with:

```bash
omarchy theme set "Dark Magic"
```

### Terminal Wallpapers + Ghostty Setup (Optional)

Install terminal wallpapers and set up Ghostty to cycle through them:

```bash
./install.sh
```

This will:
- Copy 5 shroom terminal backgrounds to `~/.config/ghostty/backgrounds/dark-magic/`
- Install the `set-background` script to `~/.config/ghostty/bin/`
- Configure Ghostty to use the wallpapers
- Set the initial wallpaper

After installation, cycle wallpapers with:
```bash
set-background next           # cycle to next wallpaper
set-background shrooms1       # set specific wallpaper (1-5)
```

## What's Included

- colors.toml - Full 16-color palette
- hyprland.conf - Window manager config with mint accent borders
- waybar.css - Status bar styling
- vscode.json - VSCode theme integration
- icons.theme - Yaru-sage-dark icon set
- backgrounds/ - Theme backgrounds including the signature dark-magic.png
- terminal-backgrounds/ - 5 high-res shroom wallpapers for Ghostty
- bin/set-background - Script to cycle terminal wallpapers
- install.sh - Automated setup for terminal backgrounds

## Credits

Created by David Morais (davidsmorais)
