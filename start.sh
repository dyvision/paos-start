sudo dhclient &

#start update
cd /home/parsec/paos-start/
git reset --hard HEAD;git pull;
sudo chmod +x *

#iot update
cd /var/www/html/paos-iot 
git reset --hard HEAD;git pull;
sudo chmod +x *

#chrome launch
google-chrome-stable --kiosk "http://parsec-arcade/start.php"
