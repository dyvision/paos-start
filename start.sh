sudo dhclient &
sudo service bluetooth restart
sudo apt install expect -y

pip3 install pynput
pip3 install pulsectl
export DISPLAY=:0;python3 hide-mouse.py

xset s off
xset s noblank
xset -dpms
xset dpms 0 0 0

git clone https://github.com/atar-axis/xpadneo.git
cd xpadneo
sudo ./install.sh

#iot update
cd /var/www/html/paos-iot 
git reset --hard HEAD;git pull;
sudo chmod +x -R *

#chrome launch
google-chrome-stable --kiosk "http://parsec-arcade/start.php"
