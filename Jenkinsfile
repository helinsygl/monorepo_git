pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                sh 'cd app && go build -o app'
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t hello-app .'
            }
        }
    }
}
