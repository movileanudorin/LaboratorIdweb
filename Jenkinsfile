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
