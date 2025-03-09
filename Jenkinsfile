pipeline {
    agent any
    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    // Use 'withCredentials' to securely access secrets
                    withCredentials([file(credentialsId: 'my-secret-file', variable: 'secretFile')]) {
                        // do something with the file, for instance 
                        sh 'cat $secretFile'
                    }
                }
            }
        }
    }
}