#!groovy

pipeline {
  
  agent any
  options {
      timestamps()
  }
  
  stages{
    
          stage("Check-out"){
                  steps {
                      git 'https://github.com/Ecat3rina/LaboratorIdweb.git'
                  }
                }
    
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
