pipeline {
    agent any
    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    // Use 'withCredentials' to securely access secrets
                    withCredentials([
                        string(credentialsId: 'secret-key-id', variable: 'SECRET_KEY'),
                    ]) {
                        // Build the Docker image, passing secrets as build args
                        sh 'ls'
                        sh 'docker build --build-arg SECRET_KEY=$SECRET_KEY .'
                        sh 'echo image built successfully'
                    }
                }
            }
        }
    }
}