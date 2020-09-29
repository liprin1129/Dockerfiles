sudo apt update
sudo apt install -y -qq --no-install-recommends libnotify4 libnss3 libsecret-1-0 libsecret-1-0 libgtk-3-0 libgconf-2-4 libxss1 libxtst6 libxkbfile1
sudo apt install -y -qq --no-install-recommends libasound2
sudo apt install -y -qq --no-install-recommends wget

mkdir installation
cd installation

wget -O vscode.deb https://go.microsoft.com/fwlink/?LinkID=760868

sudo dpkg -i vscode.deb
