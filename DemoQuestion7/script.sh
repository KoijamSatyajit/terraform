#!/bin/bash
sudo yum update -y
sudo yum install httpd24 git -y
sudo service httpd start
sudo chkconfig httpd on
sudo sh -c "echo '<html><body><h1>Hello All, this is for testing</h1></body></html>' > /var/www/html/index.html"

