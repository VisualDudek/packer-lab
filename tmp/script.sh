#!/bin/bash

sudo su <<HERE
yum install httpd-2.4.56-1.amzn2023 -y
systemctl start httpd 
systemctl enable httpd

echo '<html><body><h1>It works! aws11 workshop</h1></body></html>' > /var/www/html/index.html
HERE