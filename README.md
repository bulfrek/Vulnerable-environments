# Linux-Vulnerable-environments
A set of vulnerable environments for tool and penetration testing deployed with docker on Linux. 

# Requirements 
All those tools run on docker, please install docker !  
[Install Docker](https://docs.docker.com/engine/install/)  
Make sure nothing is running on used ports : 
- 20
- 21
- 22
- 23
- 25
- 80
- 81
- 82
- 83
- 84
- 85
- 111
- 139
- 389
- 443
- 445
- 512
- 513
- 514
- 1099
- 1524
- 2121
- 5432
- 5900
- 6000
- 6667
- 8009
- 8080
- 8086
- 8088
- 8180
- 8888
- 9090
- 38195
- 39006

# Safety measures 
All the ports are forwarded to your localhost address only so the services are not detectable from outside, if you want to forward those port to your network, use those commands and rerun the commands on your modified README.md: 

```
cd Vulnerable-environments
sed -i 's/127.0.0.1://g' README.md
cd mutillidae-docker
sed -i 's/127.0.0.1://g' docker-commpose.yaml
```

# Metasploitable 
Metasploitable is vulnerable Linux machine with multiple services. 

To run it past this command : 

```
sudo docker run -it -d --name metasploitable2.1 -p 127.0.0.1:21:21/tcp -p 127.0.0.1:20:22 -p 127.0.0.1:23:23/tcp -p 127.0.0.1:25:25/tcp -p 127.0.0.1:83:80/tcp -p 127.0.0.1:111:111/tcp -p 127.0.0.1:139:139/tcp -p 127.0.0.1:445:445/tcp -p 127.0.0.1:512:512/tcp -p 127.0.0.1:513:513/tcp -p 127.0.0.1:514:514/tcp -p 127.0.0.1:1099:1099/tcp -p 127.0.0.1:1524:1524/tcp -p 127.0.0.1:2121:2121/tcp -p 127.0.0.1:3307:3306/tcp -p 127.0.0.1:5432:5432/tcp -p 127.0.0.1:5900:5900/tcp -p 127.0.0.1:6000:6000/tcp -p 127.0.0.1:6667:6667/tcp -p 127.0.0.1:8009:8009/tcp -p 127.0.0.1:8180:8180/tcp -p 127.0.0.1:8835:8834/tcp -p 127.0.0.1:39006:39005/tcp tleemcjr/metasploitable2
```

# DVWA
DVWA or Damn Vulnerable Web Applications is a vulnerable web site with multiple flaws. DVWA is installed by default with Metasploitable but if you want to run it alone past this command : 

```
sudo docker run -it -d --name dvwa -p 127.0.0.1:84:80/tcp vulnerables/web-dvwa
```

# BeWapp 

Bewapp is another vulnerable web application. 

```
sudo docker run -it -d -p 127.0.0.1:85:80 hackersploit/bwapp-docker
```

You then need to visit the page localhost:85/install.php and finalize the installation. 

# WebGoat 

Yet another vulnerable web app

```
sudo docker run -it -d -p 127.0.0.1:8080:8080 -p 127.0.0.1:9090:9090 webgoat/webgoat
```

You then need to visit localhost:8080/WebGoat and create an account. 

# Mutillidae 

Mutillidae is a set of vulnerable web oriented services with some web pages, a database and an LDAP interface.  

Since mutiple containers are run you need to clone the mutillidae-docker repository : 

```
git clone https://github.com/webpwnized/mutillidae-docker.git
cd mutillidae-docker
sudo docker compose up -d
```

You have to visit any of the web pages next : localhost:80 (or 443 or 8888) and rebuild the database (one of the first blue links)

# Deploy everything 
To deploy everything at once run the script in the repository :

```
sh vulnenv.sh
```

# Summary of used ports

20/tcp   open  ftp-data  
21/tcp   open  ftp  
22/tcp   open  ssh  
23/tcp   open  telnet  
25/tcp   open  smtp  
80/tcp   open  mutillidae web  
81/tcp   open  mutillidae database managment  
82/tcp   open  mutillidae ldap managment  
83/tcp   open  Metasploitable web page   
84/tcp   open  DVWA  
85/tcp   open  Bewapp  
111/tcp  open  rpcbind  
139/tcp  open  netbios-ssn  
389/tcp  open  mutillidae ldap  
443/tcp  open  mutillidae https web page  
445/tcp  open  microsoft-ds  
512/tcp  open  exec  
513/tcp  open  login  
514/tcp  open  shell  
1099/tcp open  rmiregistry  
1524/tcp open  ingreslock  
2121/tcp open  ccproxy-ftp  
3000/tcp open  ppp  
5432/tcp open  postgresql  
5900/tcp open  vnc server  
6000/tcp open  X11  
6667/tcp open  irc  
8009/tcp open  ajp13  
8080/tcp open  WebGoat web page   
8086/tcp open  d-s-n  
8088/tcp open  radan-http  
8180/tcp open  apache tomcat  
8888/tcp open  mutillidae web page   
9090/tcp open  WebGoat admin  
38195/tcp open  unknown  
39006/tcp open  unknown  