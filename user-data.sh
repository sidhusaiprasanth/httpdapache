#!/usr/bin/env bash

sudo dnf install httpd -y
systemctl start httpd
systemctl enable httpd
sudo dnf install git -y
git clone https://bitbucket.org/dptrealtime/static-html-web-source.git
cd static-html-web-source
cp -R * /var/www/html
sudo dnf install collectd -y
systemctl start collectd
systemctl enable collectd
sudo dnf install amazon-cloudwatch-agent -y
systemctl start amazon-cloudwatch-agent
systemctl enable amazon-cloudwatch-agent
sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-ctl -a fetch-config -m ec2 -s -c file:/opt/aws/amazon-cloudwatch-agent/bin/config.json