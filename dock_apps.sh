#!/usr/bin/env bash



function add_app_to_dock {
  echo $1
  defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>$1</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"
  killall Dock
  sleep 1
}

function add_folder_to_dock {
  defaults write com.apple.dock persistent-others -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>$1</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"
  killall Dock
  sleep 1
}

# Wipe all (default) apps and folders from the Dock
defaults write com.apple.dock persistent-apps -array
defaults write com.apple.dock persistent-others -array

#add persistent apps to the dock

#entertainment
add_app_to_dock "/Applications/iTunes.app"

#communication
add_app_to_dock "/Applications/zoom.us.app"
add_app_to_dock "/Applications/Messages.app"
add_app_to_dock "/Applications/Microsoft Outlook.app"
add_app_to_dock "/Applications/Slack.app"

#code
add_app_to_dock "/Applications/Atom.app"
add_app_to_dock "/Applications/Utilities/Terminal.app"
add_app_to_dock "/Applications/Google Chrome.app"

#folders
add_folder_to_dock "/Applications"
add_folder_to_dock "$HOME/Code"
