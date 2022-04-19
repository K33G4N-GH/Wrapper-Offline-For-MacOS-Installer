echo "Wrapper: Offline for macOS will install to the directory this shell file is in."
echo "Meaning, this would be located in $(dirname "$0")/Wrapper-Offline.\n"
read -p "Press Return or Enter to continue with installation, otherwise press Ctrl+C or close this window to cancel."
echo "Installing Wrapper: Offline for macOS via Git..."
sleep 3
git clone "https://github.com/CLVM2004/Wrapper-Offline-For-MacOS.git"
echo "Making all shell files executable..."
cd Wrapper-Offline
chmod +x start_wrapper.sh
chmod +x update_wrapper.sh
chmod +x import.sh
cd utilities
chmod +x open_http-server.sh
chmod +x open_nodejs.sh
chmod +x open_chromium.sh
chmod +x audio_import.sh
chmod +x photo_import.sh
echo "Finished! (hopefully)"
read -p "Press Return or Enter to exit."
break