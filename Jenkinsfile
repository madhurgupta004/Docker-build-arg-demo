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
                        sh 'docker build --build-arg SECRET_KEY=$SECRET_KEY -t my-image:latest .'
                        sh 'echo image built successfully'
                    }
                }
            }
        }
    }
}