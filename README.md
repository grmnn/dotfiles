# Dotfiles, Configs and Snippets

## Macos Dock Customization

```bash
# Set dock animation speed (0 is fastest)
defaults write com.apple.dock autohide-time-modifier -float 0

# Set dock opening delay (0 is no delay)
defaults write com.apple.dock autohide-delay -float 0

# Apply the changes by restarting the Dock
killall Dock
```