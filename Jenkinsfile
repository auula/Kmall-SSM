pipeline {
    agent any
    stages {
        stage('Build Project') {
            steps {
                echo '正在检查Maven版本.....'
                sh 'mvn --version'
            }
        }
        stage('部署成功.') {
            steps {
                echo '部署服务器地址: http://20.79.15.136:8080'
            }
        }
    }
}