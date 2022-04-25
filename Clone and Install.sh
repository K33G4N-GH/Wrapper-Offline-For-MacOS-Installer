cd $(dirname "$0")
echo "Wrapper: Offline for macOS will install to the Applications directory."
read -p "Press Return or Enter to continue with installation, otherwise press Ctrl+C or close this window to cancel."
echo "Installing Wrapper: Offline for macOS via Git..."
sleep 3
sudo git clone "https://github.com/CLVM2004/Wrapper-Offline-For-MacOS.git" ~/Applications/Wrapper-Offline
echo "Making all shell files executable..."
cd ~/Applications/Wrapper-Offline
chmod +x ./make_executable.command
./make_executable.command
echo "Installing any necessary NPM packages..."
cd wrapper
sudo npm install
sudo npm install http-server -g
echo "Copying Chromium to utilities folder..."
sudo cp "$(dirname "$0")/Chromium.app" "$(pwd)/utilities/Chromium.app"
echo "Finished! (hopefully)"
read -p "Press Return or Enter to exit."
break