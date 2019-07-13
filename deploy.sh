#!/bin/bash
#YooDing编写脚本 qq2420498526
version="kmall-0.0.1-SNAPSHOT"
warName=${version}.war
echo -e "\033[32m -----------------------------------------------------------------------------------------------\033[0m"
echo -e "  [ \033[32mINFO\033[0m ]   deploy war to Tomcat ....."
wget -c http://jenkins.codegc.me/${warName}
mv ./${warName} /root/apache-tomcat-9.0.19/webapps/ROOT
cd /root/apache-tomcat-9.0.19/webapps/ROOT
jar -xvf ${warName}
rm -rf ${warName}
echo -e "\033[32m -----------------------------------------------------------------------------------------------\033[0m"
echo -e "  [ \033[32mINFO\033[0m ]   deploy war to Tomcat Done."
echo -e "\033[32m -----------------------------------------------------------------------------------------------\033[0m"
exit
