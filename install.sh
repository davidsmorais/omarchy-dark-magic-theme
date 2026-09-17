#!/usr/bin/env bash
# Install Dark Magic Omarchy theme with terminal backgrounds and wallpaper cycling

set -euo pipefail

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}=== Dark Magic Omarchy Theme Installer ===${NC}"

# Get the script directory (where this install.sh lives)
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Paths
GHOSTTY_BG_DIR="${HOME}/.config/ghostty/backgrounds/dark-magic"
GHOSTTY_BIN_DIR="${HOME}/.config/ghostty/bin"
GHOSTTY_CONFIG="${HOME}/.config/ghostty/config"
WALLPAPER_CONF="${HOME}/.config/ghostty/wallpaper.conf"

# Step 1: Copy terminal backgrounds
echo -e "\n${BLUE}Installing terminal backgrounds...${NC}"
mkdir -p "$GHOSTTY_BG_DIR"
if [[ -d "$SCRIPT_DIR/terminal-backgrounds" ]]; then
  cp "$SCRIPT_DIR/terminal-backgrounds"/*.png "$GHOSTTY_BG_DIR/"
  echo -e "${GREEN}✓ Copied 5 shroom wallpapers to $GHOSTTY_BG_DIR${NC}"
else
  echo -e "${RED}✗ terminal-backgrounds directory not found${NC}"
  exit 1
fi

# Step 2: Install set-background script
echo -e "\n${BLUE}Installing set-background script...${NC}"
mkdir -p "$GHOSTTY_BIN_DIR"
if [[ -f "$SCRIPT_DIR/bin/set-background" ]]; then
  cp "$SCRIPT_DIR/bin/set-background" "$GHOSTTY_BIN_DIR/"
  chmod +x "$GHOSTTY_BIN_DIR/set-background"
  echo -e "${GREEN}✓ Installed set-background to $GHOSTTY_BIN_DIR${NC}"
else
  echo -e "${RED}✗ bin/set-background script not found${NC}"
  exit 1
fi

# Step 3: Set up wallpaper.conf if it doesn't exist
echo -e "\n${BLUE}Setting up wallpaper configuration...${NC}"
if [[ ! -f "$WALLPAPER_CONF" ]]; then
  mkdir -p "$(dirname "$WALLPAPER_CONF")"
  echo "# Written by Dark Magic theme installer" > "$WALLPAPER_CONF"
  echo "background-image = $GHOSTTY_BG_DIR/shrooms1.png" >> "$WALLPAPER_CONF"
  echo -e "${GREEN}✓ Created wallpaper.conf with shrooms1.png${NC}"
else
  echo -e "${GREEN}✓ wallpaper.conf already exists${NC}"
fi

# Step 4: Add wallpaper config include to ghostty config if missing
echo -e "\n${BLUE}Checking Ghostty configuration...${NC}"
if [[ ! -f "$GHOSTTY_CONFIG" ]]; then
  echo -e "${RED}✗ Ghostty config not found at $GHOSTTY_CONFIG${NC}"
  echo -e "${BLUE}You may need to manually add this line to your Ghostty config:${NC}"
  echo -e "${BLUE}config-file = ?\"~/.config/ghostty/wallpaper.conf\"${NC}"
else
  if grep -q 'wallpaper.conf' "$GHOSTTY_CONFIG"; then
    echo -e "${GREEN}✓ Wallpaper config already included in Ghostty config${NC}"
  else
    echo -e "${BLUE}Adding wallpaper.conf include to Ghostty config...${NC}"
    # Add after the first config-file line or at the top
    sed -i '/^config-file.*=.*?/a config-file = ?"~/.config/ghostty/wallpaper.conf"' "$GHOSTTY_CONFIG" || \
      echo 'config-file = ?"~/.config/ghostty/wallpaper.conf"' >> "$GHOSTTY_CONFIG"
    echo -e "${GREEN}✓ Added wallpaper.conf include to Ghostty config${NC}"
  fi
fi

# Step 5: Test it
echo -e "\n${BLUE}Testing wallpaper setup...${NC}"
if "$GHOSTTY_BIN_DIR/set-background" shrooms1; then
  echo -e "${GREEN}✓ Successfully set shrooms1 wallpaper${NC}"
else
  echo -e "${RED}✗ Failed to set wallpaper${NC}"
  exit 1
fi

echo -e "\n${GREEN}=== Installation Complete! ===${NC}"
echo -e "\n${BLUE}Terminal backgrounds installed at:${NC}"
echo "  $GHOSTTY_BG_DIR"
echo -e "\n${BLUE}Cycle wallpapers with:${NC}"
echo "  set-background next    # cycle to next wallpaper"
echo "  set-background shrooms1   # set specific wallpaper (1-5)"
echo -e "\n${BLUE}Current wallpaper is stored in:${NC}"
echo "  $WALLPAPER_CONF"
