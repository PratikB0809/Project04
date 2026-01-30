pipeline {
    agent {
        node {
            label 'maven'
        }
    }

    environment {
        PATH = "/opt/apache-maven-3.9.9/bin:$PATH"
    }

    stages {

        stage('Build') {
            steps {
                echo "-------------------------Build STARTED---------------------------------------"
                sh 'mvn clean compile'
                echo "-------------------------Build Completed---------------------------------------"
            }
        }

        stage("Test") {
            steps {
                echo "-------------------------UNIT TEST STARTED Now---------------------------------------"
                sh 'mvn test'
                echo "-------------------------UNIT TEST Completd---------------------------------------"
            }
        }

        stage('SonarQube analysis') {
            environment {
                scannerHome = tool 'valaxy-sonar-scanner'
            }
            steps {
                withSonarQubeEnv('valaxy-sonarqube-server') {
                    sh "${scannerHome}/bin/sonar-scanner"
                }
            }
        }

    }
}
