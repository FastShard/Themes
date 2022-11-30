clear && curl -s https://raw.githubusercontent.com/FastShard/Themes/main/Installer/ascii.txt

echo "🢒 Updating Themes"
sudo rm -rf ~/.config/fastshard/
sudo rm -rf ~/fastshard
sudo rm -rf /usr/bin/fastshard

# Create the Themes Directory
echo "🢒 Creating Directories"
mkdir ~/.config/fastshard > /dev/null

# Install Themes
echo "🢒 Installing Themes"
cd ~/ && git clone -q https://github.com/FastShard/Themes > /dev/null && cd ~/Themes && cp -r * ~/.config/fastshard > /dev/null
rm -rf ~/Themes > /dev/null
#sudo cp ~/.config/fastshard/lotus/bspwm/bin/themechanger.sh ~/.config/bspwm/bin/
#sudo cp ~/.config/fastshard/lotus/sxhkd/sxhkdrc ~/.config/sxhkd/
bspc wm -r

# Install Binary
echo "🢒 Installing Binary"
cd ~/ && curl -s https://raw.githubusercontent.com/FastShard/Binary/main/Binary/fastshard -o fastshard 
sudo chmod +x ~/fastshard > /dev/null
sudo mv fastshard /usr/bin/
echo " "
echo "🢒 ThemeSwitcher has been installed. Run it using 'fastshard <theme>' in your Terminal"
