pipeline {
    agent any
    tools {
        nodejs 'NodeJS 20.3.0'
    }

    stages {
        stage('Setup') {
            steps {
                echo "Performing setup..."
                // Add additional setup tasks here if needed
            }
        }

        stage('Build') {
            steps {
                echo "Building..."
                // Add build steps here
            }
        }

        stage('Test') {
            steps {
                echo "Testing..."
                // Add test steps here
            }
        }

        stage('Deploy') {
            steps {
                echo "Deploying..."
                // Add deployment steps here
            }
        }
    }

    post {
        success {
            echo 'Pipeline succeeded!'
            // Additional actions to perform if the pipeline succeeds
        }

        failure {
            echo 'Pipeline failed!'
            // Additional actions to perform if the pipeline fails
        }
    }
}