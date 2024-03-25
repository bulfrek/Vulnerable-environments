#!/bin/bash
#Metasploitable
sudo docker run -it -d --name metasploitable2.1 -p 127.0.0.1:21:21/tcp -p 127.0.0.1:20:22 -p 127.0.0.1:23:23/tcp -p 127.0.0.1:25:25/tcp -p 127.0.0.1:83:80/tcp -p 127.0.0.1:111:111/tcp -p 127.0.0.1:139:139/tcp -p 127.0.0.1:445:445/tcp -p 127.0.0.1:512:512/tcp -p 127.0.0.1:513:513/tcp -p 127.0.0.1:514:514/tcp -p 127.0.0.1:1099:1099/tcp -p 127.0.0.1:1524:1524/tcp -p 127.0.0.1:2121:2121/tcp -p 127.0.0.1:3307:3306/tcp -p 127.0.0.1:5432:5432/tcp -p 127.0.0.1:5900:5900/tcp -p 127.0.0.1:6000:6000/tcp -p 127.0.0.1:6667:6667/tcp -p 127.0.0.1:8009:8009/tcp -p 127.0.0.1:8180:8180/tcp -p 127.0.0.1:8835:8834/tcp -p 127.0.0.1:39006:39005/tcp tleemcjr/metasploitable2
#DVWA 
sudo docker run -it -d --name dvwa -p 127.0.0.1:84:80/tcp vulnerables/web-dvwa
#BeWapp
sudo docker run -it -d -p 127.0.0.1:85:80 hackersploit/bwapp-docker
#Webgoat
sudo docker run -it -d -p 127.0.0.1:8080:8080 -p 127.0.0.1:9090:9090 webgoat/webgoat
#Mutillidae
git clone https://github.com/webpwnized/mutillidae-docker.git
cd mutillidae-docker
sudo docker compose up -d
