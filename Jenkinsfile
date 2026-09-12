pipeline {
    agent any

    triggers {
        githubPush()
        cron('TZ=Asia/Kolkata\n0 22 * * *')
    }

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
            emailext(
                to: 'sachidanandabhanja786@gmail.com',
                subject: "Robot tests: ${currentBuild.currentResult} - ${env.JOB_NAME} #${env.BUILD_NUMBER}",
                body: "Robot test results are available at ${env.BUILD_URL}.",
                attachmentsPattern: 'results/output.xml,results/log.html,results/report.html'
            )
        }
    }
}
