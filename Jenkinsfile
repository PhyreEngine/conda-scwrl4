pipeline {
  agent { label 'conda-build' }
  environment {
    tmpdir = "${pwd tmp: true}"
  }
  stages {
    stage('build') {
      steps {
        withCredentials([
          string(credentialsId: 'conda-sources', variable: 'CONDA_SOURCES'),
          string(credentialsId: 'scwrl-user', variable: 'SCWRL_USER')
        ]) {
          sh 'if [ -e pre-build.sh ]; then ./pre-build.sh; fi'
          sh '''#!/bin/bash
set -e
conda build . --cache-dir ${tmpdir}
'''
          sh 'if [ -e post-build.sh ]; then ./post-build.sh; fi'
        }
      }
    }
  }
}
