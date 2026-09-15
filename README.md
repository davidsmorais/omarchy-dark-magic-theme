# Dark Magic

A dark Omarchy theme with a mint (`#66eeaa`) accent and deep navy backgrounds. Pairs with the [Dark Magic VS Code theme](https://marketplace.visualstudio.com/items?itemName=DavidMorais.dark-magic-themes).

![Dark Magic preview](preview.png)

## Install

```bash
omarchy theme install https://github.com/davidsmorais/omarchy-dark-magic-theme
```

## What's included

- `colors.toml` — full palette (drives terminals, shell, editors via Omarchy templates)
- `backgrounds/` — 6 matching wallpapers
- `icons.theme` — `Yaru-sage-dark`

## VS Code (manual)

`vscode.json` can't ship in an installable theme (Omarchy blocks it on `theme install`), so install the matching editor theme by hand:

1. Install [Dark Magic](https://marketplace.visualstudio.com/items?itemName=DavidMorais.dark-magic-themes) (`DavidMorais.dark-magic-themes`)
2. Select it in VS Code

## Local tweaks (not shipped)

This repo intentionally omits `hyprland.conf` / `waybar.css` legacy overrides — Omarchy now themes Hyprland and the shell from `colors.toml`. If you want the author's local border tweaks (mint→blue gradient, 2px borders, 8/4 gaps, rounding 8), apply them as a personal overlay after installing.
