#!groovy

pipeline {
  
  agent any
  options {
      timestamps()
  }
  
  stages{
  
          stage("Build"){
            steps {
                bat "\"${tool 'MSBuild-default'}\" BlazorApp3.sln /p:DeployOnBuild=true /p:DeployDefaultTarget=WebPublish /p:WebPublishMethod=FileSystem /p:SkipInvalidConfigurations=true /t:build /p:Configuration=Release /p:Platform=\"Any CPU\" /p:DeleteExistingFiles=True /p:publishUrl=c:\\inetpub\\wwwroot"
            }
          }
  
          stage("Test"){
               steps {
                    echo "Sunt acolo"
                }
          }
        
       }
  
  
}
