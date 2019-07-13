pipeline {
    agent any
    environment {
        REMOTE_HOST = "120.79.15.136"
        REMOTE_USER = "root"
        REPO_URL = "git@github.com:YooDing/Kmall-SSM.git"
        BRANCH_NAME = "master"
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
            }
        }
        stage('3.Deploy Project') {
            steps {
                sh "ssh ${REMOTE_HOST} < deploy.sh"
                echo '部署服务器地址: http://20.79.15.136:8080'
            }
        }
    }
    
}