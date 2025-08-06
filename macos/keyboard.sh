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
curl -L -o ~/Downloads/EurKEY-macOS.tar.gz https://github.com/felixfoertsch/EurKEY-macOS/archive/refs/heads/master.tar.gz
tar -xzvf ~/Downloads/EurKEY-macOS.tar.gz -C ~/Downloads/
sudo cp ~/Downloads/EurKEY-macOS-master/*.bundle /Library/Keyboard\ Layouts/
# TODO: activate in script?