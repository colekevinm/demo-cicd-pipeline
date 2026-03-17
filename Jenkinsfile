pipeline {
    agent any

    stages {

        stage('Checkout Code') {
            steps {
                echo 'Checking out source code...'
                checkout scm
            }
        }

        stage('Build') {
            steps {
                echo 'Running build script...'
                bat 'build.bat'
            }
        }

        stage('Unit Tests') {
            steps {
                echo 'Running test script...'
                bat 'run-tests.bat'
            }
        }

        stage('Security Scan') {
            steps {
                script {
                    def scannerHome = tool 'SonarScanner'
                    withSonarQubeEnv('SonarQube') {
                        bat "\"${scannerHome}\\bin\\sonar-scanner.bat\""
                    }
                }
            }
        }

        stage('Deploy to Dev') {
            steps {
                echo 'Deploying to development environment...'
                bat 'deploy-dev.bat'
            }
        }

        stage('Approval for Staging') {
            steps {
                input message: 'Approve deployment to Staging?'
            }
        }

        stage('Deploy to Staging') {
            steps {
                echo 'Deploying to staging environment...'
                bat 'deploy-staging.bat'
            }
        }

        stage('Approval for Production') {
            steps {
                input message: 'Approve deployment to Production?'
            }
        }

        stage('Deploy to Production') {
            steps {
                echo 'Deploying to production environment...'
                bat 'deploy-prod.bat'
            }
        }
    }
}