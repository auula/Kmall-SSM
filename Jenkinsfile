pipeline {
    agent any
    stages {
        stage('1.开始下载源代码.') {
            steps {
                echo '系统JDK版本:'
                sh 'java -version'
                echo '系统Maven版本:'
                sh 'mvn --version'
                echo '系统Git版本:'
                sh 'git --version'
            }
        }
        stage('2.开始Maven构建项目') {
            sh "mvn clean package"
            sh "ls -l"
        }
        stage('3.开始部署项目.') {
            steps {
                echo '部署服务器地址: http://20.79.15.136:8080'
            }
        }
    }
}