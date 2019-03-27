#! /bin/bash
#cp /opt/docker/httpd.conf /etc/httpd/conf/httpd.conf
cp /opt/docker/ssl.conf  /etc/httpd/conf.d/.
cp /opt/docker/webs.conf /etc/httpd/conf.d/.
mkdir /var/www/certs
mkdir /var/www/www.prova1.org

# CA
cp /opt/docker/cakey.pem /var/www/certs/cakey.pem
cp /opt/docker/cacert.pem /var/www/certs/cacert.pem
# www.web1.cat 
cp /opt/docker/index.prova1.html /var/www/www.prova1.org/index.html
cp /opt/docker/serverkey.web1.pem /var/www/certs/serverkey.prova1.pem
cp /opt/docker/servercert.web1.pem /var/www/certs/servercert.prova1.pem
# web default
cp /opt/docker/index.plain.html /var/www/html/index.html
#sed -i -e s,'https.edt.org','https.edt.org www.auto1.cat www.auto2.cat www.web1.org www.web2.org', /etc/hosts
sed  's/https.edt.org/https.edt.org www.prova1.org/' /etc/hosts > /tmp/hosts$$
cp /tmp/hosts$$ /etc/hosts

