#!groovy

pipeline {
  
  agent any
  options {
      timestamps()
  }
  
  stages{
    
  
          stage("Build"){
            steps {
                bat 'nuget restore BlazorApp3.sln'
		            bat "\"${tool 'MSBuild'}\" BlazorApp3.sln /p:Configuration=Release /p:Platform=\"Any CPU\" /p:ProductVersion=1.0.0.${env.BUILD_NUMBER}"
            }
          }
  
          stage("Test"){
               steps {
                    echo "Sunt acolo"
                }
          }
        
       }
  
  
}
