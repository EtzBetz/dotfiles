#                                                       
#  88888888888  888b      88  8b           d8           
#  88           8888b     88  `8b         d8'           
#  88           88 `8b    88   `8b       d8'            
#  88aaaaa      88  `8b   88    `8b     d8'  ,adPPYba,  
#  88"""""      88   `8b  88     `8b   d8'   I8[    ""  
#  88           88    `8b 88      `8b d8'     `"Y8ba,   
#  88           88     `8888       `888'     aa    ]8I  
#  88888888888  88      `888        `8'      `"YbbdP"'  
#                                                       

# set history size to infinite (anything non-numbers in infinite. THIS IS A LIE)
export HISTSIZE=100000
export HISTFILESIZE=100000

# added by jetbrains toolbox
export PATH="$PATH:/Users/raphael/Library/Application Support/JetBrains/Toolbox/scripts"

# added for pipenv
export PATH="$PATH:/Users/raphael/Library/Python/3.11/bin"
export PYTHONPATH="${PYTHONPATH}:/Users/raphael/Library/Python/3.11/bin"

# added for ccache (https://docs.espressif.com/projects/esp-idf/en/latest/esp32p4/get-started/linux-macos-setup.html#for-macos-users), homebrew install told so
export PATH="$PATH:/opt/homebrew/opt/ccache/libexec"

# added for flutter dev/android studio
export PATH="$PATH:/Users/raphael/Documents/Coding/Flutter/flutter_sdk/bin"
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"

# java stuff
export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"

# ruby/gems stuff
export PATH="/opt/homebrew/lib/ruby/gems/3.4.0/bin:$PATH"

# everHome Fastlane Auth stuff
export FASTLANE_USER="rabetz16@gmail.com"
export FASTLANE_PASSWORD="PLCJuU9Gsr5MqXq"
export FASTLANE_APPLE_APPLICATION_SPECIFIC_PASSWORD="xbhm-ykzw-xdjo-htbv"
export FASTLANE_SESSION="---\n- !ruby/object:HTTP::Cookie\n  name: myacinfo\n  value: DAWTKNV323952cf8084a204fb20ab2508441a07d02d3ab961dd1252c20a0c852ad7dddc679517f5b4bf82565c850a6629ba6e3fd202f0a7e70b55cfd49d2d8371dded07238f61a18b6aacedfa21ae0666abd7fa1fcef56f9aa976a8b636ebda4493fa121febef0ba6a36115c6c1926dedc53db7a3b7f36b11f850e4be9f4805f324538a67a82de259f6fba234a07305a1c38f3f9b9678357938362de6cc074d638759919da0f0139bf5d87d95f3cfc5e775496886f2789f21246bca86b94567e0708ce3de2fe3899e0f70acd67d708076d113f9df4d454d4823f939b562ace5010c91355b9512caa185fdace5eabce77ea4b46ed4e9f5080ab3cae94f587883e07f838bab58a31a5c7c870846d18a19bf2c7028f205e024f6d5096e1bd8b5f953a03aabc20f2719680c3a5a47f73808d8236abf368864e6ea4f5fdda26f242ccbebffc688d001e195f78bdabb785fd5bd05ebdc009caa8cecd62ef9830018a9626f40138ceee38c8d6d00530e85b1aca2eedb3b377e5676115456a198bddfce9af29a604e9e6690d6d66aaa069587145502aeb75b0b9ae8ddfd4768b6d7f503c4c1fbb49e104034defe05a4fa346c55b44a8d5d01d816d76420925d75c0600017a61407b5688667d5d8493b5df3f1b72696cc0eb88fca5cb5b859da8bb625689acca47c3fd288fdd5852888f0ed28cc1e83423417f6c83df12fea5ea7e26c4ba18b557c2b74a67ee1b4c4430718c0ecdc4f85cbb5802585a47V3\n  domain: apple.com\n  for_domain: true\n  path: "/"\n  secure: true\n  httponly: true\n  expires:\n  max_age:\n  created_at: 2025-08-01 15:02:50.661025000 +02:00\n  accessed_at: 2025-08-01 15:02:50.661685000 +02:00\n- !ruby/object:HTTP::Cookie\n  name: DES5fe83d5afa79824351ffc50b28f51f595\n  value: HSARMTKNSRVXWFlagFm3VkQvcFX/F251o1WryefLGE3uH+5EjqTRycJ+7bD6gAmeEMhsvMQF8pqKPM3399KZg/nkgo5X47Svtd5vkcKZjzYzmGzGAwqLKPdcHWoakZDq7VJHbMd9ZnKGEtcx7ae1A8gmhfp/V6sKLbcECimMaLr24+efFWX1OWpjWdTSzVbz20k=SRVX\n  domain: idmsa.apple.com\n  for_domain: true\n  path: "/"\n  secure: true\n  httponly: true\n  expires:\n  max_age: 2592000\n  created_at: 2025-07-10 09:15:01.730949000 +02:00\n  accessed_at: 2025-08-01 15:02:49.378315000 +02:00\n- !ruby/object:HTTP::Cookie\n  name: dqsid\n  value: eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE3NTQwNTMzNzAsImp0aSI6InJKSi1zREJSdzQ2ZEt6UkxTRldOWkEifQ.mzoQnoqMeIDfZGLqPRakBV-Ss3ZghMZ6MvDwWUSPEjw\n  domain: appstoreconnect.apple.com\n  for_domain: false\n  path: "/"\n  secure: true\n  httponly: true\n  expires:\n  max_age: 1800\n  created_at: &1 2025-08-01 15:02:51.720702000 +02:00\n  accessed_at: *1\n"
