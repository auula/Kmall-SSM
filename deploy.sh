#!/bin/bash
#YooDing编写脚本 qq2420498526
version="Kmall-SSM-0.0.1-SNAPSHOT"
warName=${version}.war
echo -e "\033[32m -----------------------------------------------------------------------------------------------\033[0m"
echo -e "  [ \033[32mINFO\033[0m ]   start deploy war to tomcat....."
echo -e "  [ \033[32mINFO\033[0m ]   this shell by YooDing Email:coding1618@gmail.com"
echo -e "\033[32m -----------------------------------------------------------------------------------------------\033[0m"
wget -c http://jenkins.codegc.me/${warName}
rm -rf /root/apache-tomcat-9.0.19/webapps/ROOT
mkdir /root/apache-tomcat-9.0.19/webapps/ROOT
mv ./${warName} /root/apache-tomcat-9.0.19/webapps/ROOT
cd /root/apache-tomcat-9.0.19/webapps/ROOT
jar -xvf ${warName}
rm -rf ${warName}
sh /root/apache-tomcat-9.0.19/bin/shutdown.sh
sleep 5
echo -e "\033[32m -----------------------------------------------------------------------------------------------\033[0m"
echo -e "  [ \033[32mINFO\033[0m ]   restart tomcat 20s...."
echo -e "\033[32m -----------------------------------------------------------------------------------------------\033[0m"
sh /root/apache-tomcat-9.0.19/bin/startup.sh
sleep 15
echo -e "\033[32m -----------------------------------------------------------------------------------------------\033[0m"
echo -e "  [ \033[32mINFO\033[0m ]   deploy war to tomcat Done."
echo -e "\033[32m -----------------------------------------------------------------------------------------------\033[0m"
exit
