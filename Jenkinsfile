pipeline {
    agent any

    environment {
        TEST_ENV = 'qa'
    }

    stages {
        stage('Install Dependencies') {
            steps {
                sh '''
                    python3 -m venv .venv
                    .venv/bin/pip install --upgrade pip
                    .venv/bin/pip install -r requirements.txt
                '''
            }
        }

        stage('Run Robot Tests') {
            steps {
                sh '''
                    rm -rf results
                    mkdir -p results
                    .venv/bin/python -m robot --outputdir results tests
                '''
            }
        }
    }

    post {
        always {
            archiveArtifacts artifacts: 'results/**', allowEmptyArchive: true
        }
    }
}
