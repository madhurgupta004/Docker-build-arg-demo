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
                        sh 'export TEMP=${SECRET_KEY}'
                        sh 'echo $TEMP'
                        sh 'docker build --build-arg SECRET_KEY=$TEMP -t my-image:latest .'
                        sh 'echo image built successfully'
                        
                        sh 'docker run --rm my-image:latest cat /tmp/secret_key.txt'
                    }
                }
            }
        }
    }
}