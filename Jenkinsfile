#!groovy

pipeline {
  
  agent any
  options {
      timestamps()
  }
  
  stages{
  
          stage("Build"){
            steps {
                bat "\"${tool 'MSBuild-default'}\" BlazorApp3.sln"
            }
          }
  
          stage("Test"){
               steps {
                    echo "Sunt acolo"
                }
          }
        
       }
  
  
}
