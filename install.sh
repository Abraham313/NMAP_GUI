#!/bin/bash
chmod +x nmap_Gui nmap_Gui_scan
mv nmap_Gui nmap_Gui_scan /usr/bin
apt-get update && apt-get install sqlite3 git nmap python-pip  -y
sleep 2
pip install --upgrade pip
sleep 2
pip install lxml
sleep 2
pip install Django
sleep 2
cd /usr/share/
git clone https://github.com/cldrn/rainmap-lite
cd /usr/share/rainmap-lite/rainmap-lite/
sleep 2
sed -i "s/8000/8080/g" "nmaper-cronjob.py"
echo What is your SMTP user name?i.e:balala@gmail.com
read user
sed -i "s/youremail@gmail.com/$user/g" "nmaper-cronjob.py"
sleep 2
echo What is your SMTP password?
read pass
sed -i "s/yourpassword/$pass/g" "nmaper-cronjob.py"
sleep 2
echo What is your SMTP address?i.e:smtp.gmail.com
read smtp
sed -i "s/smtp.gmail.com/$smtp/g" "nmaper-cronjob.py"
sleep 2
python manage.py migrate
sleep 2
python manage.py loaddata nmapprofiles
sleep 2
python manage.py createsuperuser
sleep 2
echo Done.Install is ok
echo run nmap_Gui to start service
cd 




