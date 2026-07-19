brew install --cask android-platform-tools
brew install scrcpy
adb connect `route -n get default | grep gateway | awk '{print $2}'`
scrcpy -Swe
