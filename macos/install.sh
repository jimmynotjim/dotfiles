#!/usr/bin/env sh
# vim: tw=0

# Useful tips from: https://github.com/mathiasbynens/dotfiles/blob/main/.macos

# Enable full keyboard access for all controls (e.g. enable Tab in modal dialogs)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# Automatically illuminate built-in MacBook keyboard in low light
defaults write com.apple.BezelServices kDim -bool true

# Turn off keyboard illumination when computer is not used for 5 minutes
defaults write com.apple.BezelServices kDimTime -int 300

# Finder: show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Finder: Always open everything in column view
# Four-letter codes for the other view modes: `icnv`, `Nlsv`, `glyv`
defaults write com.apple.Finder FXPreferredViewStyle clmv

# Don’t automatically rearrange Spaces based on most recent use
defaults write com.apple.dock mru-spaces -bool false

# Show remaining battery percentage (can't show time in recent macOS versions)
defaults write com.apple.menuextra.battery ShowPercent -string "YES"

# Show all filename extensions in Finder
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Use current directory as default search scope in Finder
#defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Show Path bar at bottom of Finder window
defaults write com.apple.finder ShowPathbar -bool true

# Show Status bar in Finder (N items, N.NN GB available)
#defaults write com.apple.finder ShowStatusBar -bool true

# https://www.howtogeek.com/261880/how-to-show-the-expanded-print-and-save-dialogs-in-os-x-by-default/
# When saving a document, show full Finder to choose where to save it
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

# https://www.howtogeek.com/261880/how-to-show-the-expanded-print-and-save-dialogs-in-os-x-by-default/
# Expand print panel by default
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true

# Save screenshots to ~/Desktop/screenshots
defaults write com.apple.screencapture location ~/Desktop/screenshots

# https://www.defaults-write.com/enable-spring-loaded-dock-items/
defaults write enable-spring-load-actions-on-all-items -bool true

# Position the Dock on the left
defaults write com.apple.dock orientation -string left

# Set the Dock size
defaults write com.apple.dock tilesize -int 34

# Autohide the Dock 
defaults write com.apple.dock autohide -bool true

# Set Dock to magnify
defaults write com.apple.dock magnification -bool true

# Set Dock magnification size
defaults write com.apple.dock largesize -int 65

# Add iOS & Watch Simulator to Launchpad
sudo ln -sf "/Applications/Xcode.app/Contents/Developer/Applications/Simulator.app" "/Applications/Simulator.app"
#sudo ln -sf "/Applications/Xcode.app/Contents/Developer/Applications/Simulator (Watch).app" "/Applications/Simulator (Watch).app"

# Display full POSIX path as Finder window title
#defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# Avoid creating .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Sort desktop icons by dateModified
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy dateModified" ~/Library/Preferences/com.apple.finder.plist

# Increase the size of icons on the desktop and in other icon views
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:iconSize 48" ~/Library/Preferences/com.apple.finder.plist

# Show icons for hard drives, servers, and removable media on the desktop
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Don't offer new disks for Time Machine backup
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool false

# Add a context menu item for showing the Web Inspector in web views
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

# Make ⌘ + F focus the search input in iTunes
defaults write com.apple.iTunes NSUserKeyEquivalents -dict-add "Target Search Field" "@F"

# Do not restore previously-opened windows in Preview
# https://apple.stackexchange.com/questions/54854/is-there-a-way-to-make-preview-not-open-all-previously-opened-files
defaults write com.apple.Preview ApplePersistenceIgnoreState YES

# Show the ~/Library folder
chflags nohidden ~/Library

# Show the full URL in the address bar (note: this still hides the scheme)
defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true

# Show the Status Bar in Safari
defaults write com.apple.Safari ShowOverlayStatusBar -bool true

# Show the Develop menu item in Safari
defaults write com.apple.Safari.SandboxBroker ShowDevelopMenu -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true

# Reopen closed tabs in Safari
defaults write com.apple.Safari AlwaysRestoreSessionAtLaunch -bool true
defaults write com.apple.Safari WebKitTabToLinksPreferenceKey -bool true

# Press Tab to highlight each item on a web page
defaults write com.apple.Safari WebKitTabToLinksPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2TabsToLinks -bool true

# Set iTerm2 to allow scrolling less with a mouse
defaults write com.googlecode.iterm2 AlternateMouseScroll -bool true


# Kill affected applications
for app in Safari Finder Dock SystemUIServer; do
  killall "$app" >/dev/null 2>&1;
done