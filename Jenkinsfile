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
		bat "\"${tool 'MSBuild'}\" BlazorApp3.sln /p:Configuration=Release /fileLoggerParameters:LogFile=MyLog.log;Encoding=UTF-8;Verbosity=diagnostic"
            }
          }
  
          stage("Test"){
               steps {
                    echo "Sunt acolo"
                }
          }
        
       }
  
  
}
