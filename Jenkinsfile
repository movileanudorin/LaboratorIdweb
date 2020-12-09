#!groovy

pipeline {
  
  agent any
  options {
      timestamps()
  }
  
  stages{
    
  
          stage("Build"){
            steps {
                //bat 'nuget restore SolutionName.sln'
		bat "\"${tool 'MSBuild'}\" BlazorApp3.sln /p:Configuration=Release /fileLoggerParameters:Encoding=UTF-8"
            }
          }
  
          stage("Test"){
               steps {
                    echo "Sunt acolo"
                }
          }
        
       }
  
  
}
