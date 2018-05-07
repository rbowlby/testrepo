pipeline { 
    agent none
    stages {
        stage('Test'){
            agent {
                docker { image 'python:3-alpine' }
            }
            steps {
                sh 'make test'
            }
        }
        stage('Deploy') {
            steps {
                sh 'make deploy'
            }
        }
    }
}
