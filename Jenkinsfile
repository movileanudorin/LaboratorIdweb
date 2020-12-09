#!groovy

pipeline {
  
  agent any
  options {
      timestamps()
  }
  
  stages{
    
  
          stage("Build"){
            steps {
                bat "\"${tool 'MSBuild-default'}\" BlazorApp3.sln /p:Configuration=Debug /p:Platform=\"Any CPU\""
            }
          }
  
          stage("Test"){
               steps {
                    echo "Sunt acolo"
                }
          }
        
       }
  
  
}
