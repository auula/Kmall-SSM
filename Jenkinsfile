pipeline {
    agent any
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
        stage('2.Build Project') {
           steps {
                sh "mvn clean package"
            }
        }
        stage('3.Deploy Project') {
            steps {
                echo '部署服务器地址: http://20.79.15.136:8080'
            }
        }
    }
    
}