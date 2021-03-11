sudo dhclient &
sudo apt install expect -y


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
