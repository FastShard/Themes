sudo rm -rf ~/.config/fastshard > /dev/null

# Create the Themes Directory
echo "🢒 Creating Directories"
mkdir ~/.config/fastshard > /dev/null

# Install Themes
echo "🢒 Installing Themes"
cd ~/ && git clone https://github.com/FastShard/Themes && cd ~/Themes && cp -d * ~/.config/fastshard > /dev/null
rm -rf ~/Themes > /dev/null

# Install Binary
echo "🢒 Installing Binary"
curl -s https://raw.githubusercontent.com/FastShard/Binary/main/Binary/fastshard -o fastshard > /dev/null
sudo chmod +x fastshard > /dev/null
mv fastshard /usr/bin/ > /dev/null
echo " "
echo "🢒 ThemeSwitcher has been installed. Run it using 'fastshard <theme>' in your Terminal"
