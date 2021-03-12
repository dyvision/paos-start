sudo dhclient &
sudo apt install expect -y

pip3 install pynput
export DISPLAY=:0;python3 hide-mouse.py

xset s off
xset s noblank
xset -dpms
xset dpms 0 0 0

git clone https://github.com/atar-axis/xpadneo.git
cd xpadneo
sudo ./install.sh


#start update
cd /home/parsec/paos-start/
git reset --hard HEAD;git pull;
sudo chmod +x -R *

#iot update
cd /var/www/html/paos-iot 
git reset --hard HEAD;git pull;
sudo chmod +x -R *

#chrome launch
google-chrome-stable --kiosk "http://parsec-arcade/start.php"
