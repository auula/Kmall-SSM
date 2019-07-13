pipeline {
    agent any
    environment {
        REMOTE_HOST = "120.79.15.136"
        REMOTE_USER = "root"
        REPO_URL = "git@github.com:YooDing/Kmall-SSM.git"
        BRANCH_NAME = "master"
        PRO_VERSIOM= "kmall-0.0.1-SNAPSHOT"
        Pro_Name= "kmall"
    }
    stages {
        stage('1.OS Info') {
            steps {
         
                sh 'java -version'
                
                sh 'mvn --version'
            
                sh 'git --version'
            }
        }
        
        stage('2.Build Project') {
           steps {
                sh "mvn clean test package"
                sh "mv  /root/.jenkins/workspace/Kmall-SSM/target/${PRO_VERSIOM}.war /www/wwwroot/jenkins.codegc.me/"
                sh "chmod 766 /www/wwwroot/jenkins.codegc.me/${PRO_VERSIOM}.war"
            }
        }
        stage('3.Deploy Project') {
            steps {
                sh "ssh ${REMOTE_HOST} < ./deploy.sh ${PRO_VERSIOM}"
                echo '部署服务器地址: http://20.79.15.136:8080/${Pro_Name}'
            }
        }
    }
    
}