node {
    stage('scm'){
        git 'https://github.com/108805/game-of-life.git'
    }
    stage('build')
    {
        sh 'mvn package'
    }
    stage('publishing the test results')
    {
        junit 'gameoflife-web/target/surefire-reports/*.xml'
        
    }
   
    stage ('building docker image')
    {
        echo "building the docker image  "
        sh 'docker image build -t poojadevops/gameoflife:1.0 .'
    }
    stage('Push the docker image to hub'){
        echo "login into docker hub "
        withCredentials([usernamePassword(credentialsId: '35e8308a-35a4-4d1d-9165-5eff4a52d65d', passwordVariable: 'passwd', usernameVariable: 'username')]) {
         sh 'docker login -u ${username} -p ${passwd} '   
    
      }
      sh 'docker push poojadevops/gameoflife:1.0'
    }
}
