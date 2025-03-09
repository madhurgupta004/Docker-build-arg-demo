pipeline {
    agent any
    environment {
        DOCKER_BUILDKIT = "1"  // Enable BuildKit
    }
    stages {
        stage('Build Docker Image') {
            steps {
                withCredentials([file(credentialsId: 'my-secret-file', variable: 'SECRET_FILE_PATH')]) {
                    sh '''
                    docker build --secret id=my_secret,src=${SECRET_FILE_PATH} -t my-image:latest .
                    '''
                }
            }
        }
    }
}
