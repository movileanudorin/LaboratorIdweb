#!groovy

pipeline {
  
  agent any
  options {
      timestamps()
  }
  
  stages{
    

    
          stage("Restore Nuget"){
                      steps {
                          bat 'C:/tools/nuget.exe restore BlazorApp3.sln'
                      }
                    }
  
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
