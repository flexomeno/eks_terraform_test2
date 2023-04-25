pipeline {
    agent any
    environment {
        AWS_DEFAULT_REGION='us-west-2'
        AWS_SECRET_ACCESS_KEY=credentials('my-aws-secret-access-key')
        AWS_ACCESS_KEY_ID=credentials('my-aws-access-key-id')
    }
    stages {
        stage('Terraform Check') {
            steps {
                sh 'terraform init'
                sh 'terraform plan'
            }
        }
        stage('User Validation WHO AM I') {
            steps {
                sh 'whoami'
            }
        }
    }
}