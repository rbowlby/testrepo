pipeline { 
    agent { dockerfile true }
    stages {
        stage('Test'){
            steps {
                sh 'make test'
            }
        }
        stage('Deploy') {
            steps {
                sh 'true'
            }
        }
    }
}
