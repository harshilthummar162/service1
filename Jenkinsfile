pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout SCM code
                checkout scm
            }
        }

        stage('Build & Run Docker Compose') {
            steps {
                script {
                    // Running Docker Compose up
                    sh 'docker -v'
                }
            }
        }
    }
}
