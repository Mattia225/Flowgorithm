desktop=$(xdg-user-dir DESKTOP)
echo "Preparing the folder..."
mkdir -p ~/wol/Flowgorithm
cd ~/wol/Flowgorithm/
echo "Downloading Flowgorithm, this depends on your internet connection speed, Please wait..."
wget https://github.com/Mattia225/g/raw/main/Flowgorithm-2.30.3-64-Setup.zip
wget https://dl.winehq.org/wine/wine-mono/9.3.0/wine-mono-9.3.0-x86.msi && wine wine-mono-9.3.0-x86.msi
mkdir ~/wol/Flowgorithm/installer
echo "Unzipping Flowgorithm..."
unzip ~/wol/Flowgorithm/Flowgorithm-2.30.3-64-Setup.zip -d ~/wol/Flowgorithm/installer
echo "The installer is ready to run"
wine ~/wol/Flowgorithm/installer/"Flowgorithm Setup.msi"
echo "The installer is finished"
read -rsn1 -p"The installation is finished, Press any key to exit";echo
echo clean up 
rm -rf ~/wol/Flowgorithm
exit
