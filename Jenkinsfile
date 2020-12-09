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
		bat "\"${tool 'MSBuild'}\" BlazorApp3.sln /t:build /p:Configuration=Release /p:Platform=\"Any CPU\""
            }
          }
  
          stage("Test"){
               steps {
                    echo "Sunt acolo"
                }
          }
        
       }
  
  
}
