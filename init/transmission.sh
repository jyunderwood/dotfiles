#!/usr/bin/env bash

# Use `~/Downloads` to store incomplete downloads
defaults write org.m0k.transmission UseIncompleteDownloadFolder -bool true
defaults write org.m0k.transmission IncompleteDownloadFolder -string "${HOME}/Downloads"

# Do not prompt for confirmation before downloading
defaults write org.m0k.transmission DownloadAsk -bool false

# Trash original torrent files
defaults write org.m0k.transmission DeleteOriginalTorrent -bool true

# Hide the donate message
defaults write org.m0k.transmission WarningDonate -bool false

# Hide the legal disclaimer
defaults write org.m0k.transmission WarningLegal -bool false

# Use a blocklist
defaults write org.m0k.transmission BlocklistURL -string "http://list.iblocklist.com/?list=bt_level1&fileformat=p2p&archiveformat=gz"
defaults write org.m0k.transmission BlocklistAutoUpdate -int 1
defaults write org.m0k.transmission BlocklistNew -int 1

# Use a random port
defaults write org.m0k.transmission RandomPort -int 1

# View Tweaks
defaults write org.m0k.transmission AutoSize -int 1
defaults write org.m0k.transmission BadgeDownloadRate -int 0
defaults write org.m0k.transmission BadgeUploadRate -int 0
