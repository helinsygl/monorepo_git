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
                sh 'echo "Building the project..."'
                // Eğer Go projesi ise burada:
                // sh 'go build -o hello-app'
            }
        }
    }
}
