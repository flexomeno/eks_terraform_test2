pipeline {
    agent any
    environment {
        AWS_DEFAULT_REGION='us-west-2'
        AWS_SECRET_ACCESS_KEY=credentials('my-aws-secret-access-key')
        AWS_ACCESS_KEY_ID=credentials('my-aws-access-key-id')
    }
    stages {
        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('Terraform Plan') {
            steps {
                sh 'terraform plan'
            }
        }
    }
}