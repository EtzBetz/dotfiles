#                                                                                                    
#  88                                 88                                                         88  
#  88                                 88                                                         88  
#  88                                 88                                                         88  
#  88   ,d8   ,adPPYba,  8b       d8  88,dPPYba,    ,adPPYba,   ,adPPYYba,  8b,dPPYba,   ,adPPYb,88  
#  88 ,a8"   a8P_____88  `8b     d8'  88P'    "8a  a8"     "8a  ""     `Y8  88P'   "Y8  a8"    `Y88  
#  8888[     8PP"""""""   `8b   d8'   88       d8  8b       d8  ,adPPPPP88  88          8b       88  
#  88`"Yba,  "8b,   ,aa    `8b,d8'    88b,   ,a8"  "8a,   ,a8"  88,    ,88  88          "8a,   ,d88  
#  88   `Y8a  `"Ybbd8"'      Y88'     8Y"Ybbd8"'    `"YbbdP"'   `"8bbdP"Y8  88           `"8bbdP"Y8  
#                            d8'                                                                     
#                           d8'                                                                      
#                                                                                                    

# download keyboard layout for en intl, but with german umlaute, unzip and put into the correct folder for usage
git clone git@github.com:ChristophHess/German-International-Keyboard-Layout.git ~/Downloads/de-intl-layout
unzip ~/Downloads/de-intl-layout/GermanIntl.bundle.zip
mv ~/Downloads/de-intl-layout/GermanIntl.bundle ~/Library/Keyboard\ Layouts/GermanIntl.bundle
# todo: activate in script?