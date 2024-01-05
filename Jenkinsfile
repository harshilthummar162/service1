pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout SCM code
                checkout scm
            }
        }

        stage('Prepare and Run Docker Compose') {
            steps {
                script {
                    // Stop and remove existing containers
                    sh 'docker compose down'

                    // Running Docker Compose up
                    sh 'docker compose up -d'
                }
            }
        }
    }
}
