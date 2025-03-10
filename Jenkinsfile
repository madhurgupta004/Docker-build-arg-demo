def var1 = "Hello"
def var2 = "${var1}-World"
pipeline {
    agent any
    stages {
        stage('Build Docker Image') {
            steps {
                withCredentials([file(credentialsId: 'my-secret-file', variable: 'SECRET_FILE_PATH')]) {
                    sh '''
                    echo ${var2}
                    export DOCKER_BUILDKIT=1
                    docker build --secret id=my_secret,src=${SECRET_FILE_PATH} -t my-image:latest .
                    '''
                }
            }
        }
    } 
}
