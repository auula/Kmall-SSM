#!/bin/bash
#YooDing编写脚本 qq2420498526
version="kmall-0.0.1-SNAPSHOT"
warName=${version}.war
echo -e "\033[32m -----------------------------------------------------------------------------------------------\033[0m"
echo -e "  [ \033[32mINFO\033[0m ]   start deploy war to tomcat....."
echo -e "  [ \033[32mINFO\033[0m ]   this shell by YooDing Email:coding1618@gmail.com"
echo -e "\033[32m -----------------------------------------------------------------------------------------------\033[0m"
wget -c http://jenkins.codegc.me/${warName}
mv ./${warName} /root/apache-tomcat-9.0.19/webapps/ROOT
cd /root/apache-tomcat-9.0.19/webapps/ROOT
jar -xvf ${warName}
rm -rf ${warName}
sh /root/apache-tomcat-9.0.19/bin/shutdown.sh
slepp 5
sh /root/apache-tomcat-9.0.19/bin/startup.sh
echo -e "\033[32m -----------------------------------------------------------------------------------------------\033[0m"
echo -e "  [ \033[32mINFO\033[0m ]   restart tomcat 20s...."
echo -e "\033[32m -----------------------------------------------------------------------------------------------\033[0m"
sleep 20
echo -e "\033[32m -----------------------------------------------------------------------------------------------\033[0m"
echo -e "  [ \033[32mINFO\033[0m ]   deploy war to tomcat Done."
echo -e "\033[32m -----------------------------------------------------------------------------------------------\033[0m"
exit
