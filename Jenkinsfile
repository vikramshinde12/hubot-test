/*Jenkinsfile (Declarative Pipeline)*/
pipeline { 
  agent any
  environment {        /* to configure an env variable at top lables*/
      name = 'sukanta'      / this var is avaiable to all steps below /
           }        / var declared at top label is added to JENKINS's env var list /
     
   parameters {
        string(name: 'Greeting1', defaultValue: 'Hello1', description: 'How should I greet the world?') / used defined parameters , with default value /
  string(name: 'Greeting2', defaultValue: 'Hello2', description: 'How should I greet the world?') / Used for 'Build with Parameters' for jobs /
    }
      
  stages {
    stage ('Maven Build') {
    steps { 
       echo "Maven Build Starts and Ends"
    echo "Name is ... ${env.name}"
    echo "###########################"
       }
    }
    stage ('Maven Compile') {
    steps { 
       echo "Maven Compile Starts and Ends"
          echo "###########################"    
       }
    }
    stage ('Maven TEst') {
    steps { 
       echo "Maven Test Starts and Ends"
          echo "###########################"
       }
    }
    stage ('Show BuildID') {
    steps { 
       echo "Build is ${env.BUILD_ID}"
          echo "###########################"
       }
    }
   stage ('Set Env Vars...') {
       environment {      / var defined inside stage is local to this stage /
       surname = 'sahoo'
       }
    steps { 
       echo "Show Env Var ...."
    sh 'printenv'
          echo "###########################"
       }
    }
   stage ('Display user defined Parameters') {
     steps {
     echo "${params.Greeting} ... Vikram"
           }
    }

    }
/*    post {
      always {
        mail to: sukanta04u@gmail.com, subject: 'pipeline passed :('
             }
      failed {
        mail to: sukanta04u@gmail.com, subject: 'pipeline failed :('
             }
         } */
}