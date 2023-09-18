#Install Apache http
sudo yum install httpd


#Start the server, and configure it to start after system reboots:
service httpd start
chkconfig httpd on


#Check for configuration errors:
service httpd configtest

#Create firewall rules to allow access to the ports on which the HTTP server listens, for example:

iptables -I INPUT -p tcp -m state --state NEW -m tcp --dport 80 -j ACCEPT
service iptables save


#Create an index file for your webserver
sudo bash -c 'echo This is my Web-Server running on Oracle Cloud Infrastructure >> /var/www/html/index.html'
