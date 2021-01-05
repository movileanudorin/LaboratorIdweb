#!groovy

pipeline {
  
  agent { dockerfile true }
  options {
      timestamps()
  }
  
  stages{
  
          stage("Test"){
               steps {
                    bat "dotnet test BlazorApp3.Server.UnitTests\\BlazorApp3.Server.UnitTests.csproj"
                }
	  }
	  
       }
  
}
