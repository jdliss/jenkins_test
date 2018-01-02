pipeline {
    agent any

    stages {
        stage("Build") {
            steps {
                sh "docker build . -t motologic/jenkins_test"
            }
        }

        stage("Test") {
            steps {
                sh "docker run motologic/jenkins_test:latest bundle exec rspec"
            }
        }
    }
}
