Log into server


------ stop apache ------------
sudo service apache2 stop


------ backup existing code ------------
cd /var/
sudo cp -r ./www ./www_backup
cd ./www
ls

---------- trashing old stuff ------------
sudo rm -rf ./html whatever is here, probably just a bat folder
mkdir html && cd html

------------ git stuff ------------
mkdir bat && cd bat
git init
git remote add stage ssh://battool@172.21.209.47/home/battool/BAT.git
git pull stage master (or whatever branch you want)

Modify variables related to server logins as necessary (./php/dbloginclass.php)
------ ensure correct document root for Apache ------------
cd /etc/apache2/sites-enabled/
sudo nano (whatever file is present)
change the variable to /var/www/html/bat/

------ restart apache ------------
sudo service apache2 restart

------ likely have to update permissions on /html/bat/php/export ------------
chmod -R 0777 /html/bat/php/export

------ reverting to backup ------------
cd /var/
sudo cp -rv ./www_backup ./www
ls