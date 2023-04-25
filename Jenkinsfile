pipeline {
    agent any
    environment {
        AWS_DEFAULT_REGION='us-west-2'
        AWS_SECRET_ACCESS_KEY='F6mBZgbZbYizuFPtXapbmG8QihKgXOSJj+6UZWcJ'
        AWS_ACCESS_KEY_ID='AKIAZTP2Y63YZ3ESE442'
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