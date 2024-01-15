#                                                                                     
#           88                 ad88                           88                      
#           88                d8"                             88    ,d                
#           88                88                              88    88                
#   ,adPPYb,88   ,adPPYba,  MM88MMM  ,adPPYYba,  88       88  88  MM88MMM  ,adPPYba,  
#  a8"    `Y88  a8P_____88    88     ""     `Y8  88       88  88    88     I8[    ""  
#  8b       88  8PP"""""""    88     ,adPPPPP88  88       88  88    88      `"Y8ba,   
#  "8a,   ,d88  "8b,   ,aa    88     88,    ,88  "8a,   ,a88  88    88,    aa    ]8I  
#   `"8bbdP"Y8   `"Ybbd8"'    88     `"8bbdP"Y8   `"YbbdP'Y8  88    "Y888  `"YbbdP"'  
#                                                                                     

# disable automatic spellcheck etc.
defaults write "Apple Global Domain" NSAutomaticSpellingCorrectionEnabled -bool false
defaults write "Apple Global Domain" WebAutomaticSpellingCorrectionEnabled -bool false
defaults write "Apple Global Domain" NSAutomaticCapitalizationEnabled -bool false
defaults write "Apple Global Domain" NSAutomaticInlinePredictionEnabled -bool false
defaults write "Apple Global Domain" NSAutomaticPeriodSubstitutionEnabled -bool false

# set notification sound
defaults write "Apple Global Domain" com.apple.sound.beep.sound -string "/System/Library/Sounds/Purr.aiff"

# set dark mode
defaults write "Apple Global Domain" AppleInterfaceStyle -string "Dark"
# set light mode/delete dark mode (this is how it works)
# defaults delete "Apple Global Domain" AppleInterfaceStyle
# set auto dark mode
defaults write "Apple Global Domain" AppleInterfaceStyleSwitchesAutomatically -bool true

# set to always show scroll bars (this way you can detect overflow issues in webdev easier)
defaults write "Apple Global Domain" AppleShowScrollBars -string "Always"

# set behavior of clicking on the scrollbar ground (it should jump to that place)
defaults write "Apple Global Domain" AppleScrollerPagingBehavior -bool true

# set key press repeat initial and when keeping pressed
defaults write "Apple Global Domain" "InitialKeyRepeat" -float "20"
defaults write "Apple Global Domain" "KeyRepeat" -float "2"

# set mouse (not trackpad!) speed
defaults write "Apple Global Domain" "com.apple.mouse.scaling" -float "3"
defaults write "Apple Global Domain" "com.apple.trackpad.scaling" -float "0.875"

# do not show recently opened apps
defaults write "com.apple.dock" "show-recents" -bool "false"
# set app icon size in dock
defaults write "com.apple.dock" tilesize -float "40"
# set enable magnification/zoom in dock
defaults write "com.apple.dock" magnification -bool true
# set app icon size in dock on zoom
defaults write "com.apple.dock" largesize -float "55"
# set dock to hide automatically
defaults write "com.apple.dock" "autohide" -bool "true"
# set dock hide/show delay to 0
defaults write "com.apple.dock" "autohide-delay" -float "0"
# set dock hide/show animation duration
defaults write "com.apple.dock" "autohide-time-modifier" -float "0.5"
# set minimize effect
defaults write "com.apple.dock" "mineffect" -string "suck"

# clear apps in docks
defaults write "com.apple.dock" "persistent-apps" -array "{}"

# Mission Control > Automatically rearrange Spaces based on most recent use
defaults write "com.apple.dock" "mru-spaces" -bool "false"

# restart dock for changes to take effect
killall Dock

# Show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true