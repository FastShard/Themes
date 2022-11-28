sudo rm -rf ~/.config/fastshard/ > /dev/null
sudo rm -rf ~/fastshard

# Create the Themes Directory
echo "🢒 Creating Directories"
mkdir ~/.config/fastshard > /dev/null

# Install Themes
echo "🢒 Installing Themes"
cd ~/ && git clone -q https://github.com/FastShard/Themes > /dev/null && cd ~/Themes && cp -r * ~/.config/fastshard > /dev/null
rm -rf ~/Themes > /dev/null

# Install Binary
echo "🢒 Installing Binary"
cd ~/ && curl -s https://raw.githubusercontent.com/FastShard/Binary/main/Binary/fastshard -o fastshard 
sudo chmod +x ~/fastshard > /dev/null
sudo mv fastshard /usr/bin/
echo " "
echo "🢒 ThemeSwitcher has been installed. Run it using 'fastshard <theme>' in your Terminal"
