# jenkins pipeline example

```
pipeline {
    agent {
      label 'jenkins-agent-python'
    }
    options {
        buildDiscarder(
            logRotator(
                daysToKeepStr: '-1',
                numToKeepStr: '5',
                artifactDaysToKeepStr: '-1',
                artifactNumToKeepStr: '5'
            )
        )
        disableConcurrentBuilds()
    }
    stages {
        stage('shell') {
            steps {
                sh '''
                    python -V
                '''
            }
        }
    }
}
```