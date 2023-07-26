pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                git branch: 'main', credentialsId: '401d8f05-7786-4c26-91d5-f3221b17e22b', url: 'https://github.com/majdisaad/majdi.git'
            }
        }
        stage('Test') {
            steps {
                 echo 'majdi saad'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
