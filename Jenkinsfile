pipeline {
  agent {
    kubernetes {
      label 'pocketnet.core'       // all your pods will be named with this prefix, followed by a unique id
      defaultContainer 'alpine' // define a default container if more than a few stages use it, will default to jnlp container
      yaml """
apiVersion: v1
kind: Pod
spec:
  containers:
  - name: alpine
    image: arm64v8/alpine:3.13
    command:
    - cat
    tty: true
"""
    }
  }
  stages {
    stage('Build') {
      steps {
        sh """
          apk add docker
          docker build --network host --no-cache --pull -t jkaldon/arm64v8-cppbuild .
          docker push -t jkaldon/arm64v8-cppbuild
        """
      }
    }
  }
}
