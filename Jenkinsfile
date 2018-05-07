pipeline { 
    agent none
    stages {
        stage('Test'){
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
