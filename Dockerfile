FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS build
# FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build
WORKDIR /app

# copy csproj and restore as distinct layers
COPY . .
#COPY D:\anul3\IDweb\lab3project .
#COPY *.sln .
#COPY BlazorApp3/*.csproj ./BlazorApp3/
#COPY BlazorApp3/*.config ./BlazorApp3/
##WORKDIR /app/BlazorApp3
RUN dotnet restore

# Download the Build Tools bootstrapper.
#USER administrator
ADD https://aka.ms/vs/16/release/vs_buildtools.exe /app/vs_buildtools.exe
RUN chmod +x /app/vs_buildtools.exe
#RUN chmod a+x /app/vs_buildtools.exe

# copy everything else and build app
#WORKDIR /app/
#COPY BlazorApp3/. ./BlazorApp3/
#WORKDIR /app/BlazorApp3
#RUN ["C:/Program Files (x86)/Microsoft Visual Studio/2019/Community/MSBuild/Current/Bin/amd64/MSBuild.exe", "/app/BlazorApp3.sln"]
#USER administrator
RUN /app/vs_buildtools.exe /app/BlazorApp3.sln

# copy build artifacts into runtime image
FROM mcr.microsoft.com/dotnet/core/aspnet:3.1 AS runtime
# FROM mcr.microsoft.com/dotnet/aspnet:5.0 AS runtime
WORKDIR /inetpub/wwwroot
COPY --from=build /app/BlazorApp3/. ./
