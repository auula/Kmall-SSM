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
                echo '系统JDK版本:'
                sh 'java -version'
                echo '系统Maven版本:'
                sh 'mvn --version'
                echo '系统Git版本:'
                sh 'git --version'
            }
        }
        stage('3.Git Clone') {
           steps {
                git([url: "${REPO_URL}", branch: "${BRANCH_NAME}"])
            }
        }
        stage('3.Build Project') {
           steps {
                sh "mvn clean test package"
            }
        }
        stage('4.Deploy Project') {
            steps {
                sh "ssh ${REMOTE_HOST} < deploy.sh"
                echo '部署服务器地址: http://20.79.15.136:8080'
            }
        }
    }
    
}