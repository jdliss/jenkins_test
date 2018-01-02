pipeline {
    stages {
        stage("docker build") {
            steps {
                sh "docker build . -t motologic/jenkins_test"
            }
        }

        stage("docker run tests") {
            steps {
                sh "docker run motologic/jenkins_test:latest bundle exec rspec"
            }
        }
    }
}
