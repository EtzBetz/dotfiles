#                                                                           
#                                                ,ad8888ba,     ad88888ba   
#                                               d8"'    `"8b   d8"     "8b  
#                                              d8'        `8b  Y8,          
#  88,dPYba,,adPYba,   ,adPPYYba,   ,adPPYba,  88          88  `Y8aaaaa,    
#  88P'   "88"    "8a  ""     `Y8  a8"     ""  88          88    `"""""8b,  
#  88      88      88  ,adPPPPP88  8b          Y8,        ,8P          `8b  
#  88      88      88  88,    ,88  "8a,   ,aa   Y8a.    .a8P   Y8a     a8P  
#  88      88      88  `"8bbdP"Y8   `"Ybbd8"'    `"Y8888Y"'     "Y88888P"   
#                                                                           

./defaults.sh
./hostname.sh
./keyboard.sh

file="$HOME/.dotfiles/macos/backgrounds/arun-clarke-UDEb05r0Uy8-unsplash.jpg"
osascript -e "tell application \"System Events\" to tell every desktop to set picture to \"${file}\" as POSIX file"
