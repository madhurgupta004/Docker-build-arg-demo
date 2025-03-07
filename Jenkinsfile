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
                        sh 'sudo docker build .'
                        sh 'echo image built successfully'
                    }
                }
            }
        }
    }
}
// --build-arg SECRET_KEY=$SECRET_KEY