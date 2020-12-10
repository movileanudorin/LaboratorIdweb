FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build
WORKDIR /app

# copy csproj and restore as distinct layers
COPY *.sln .
COPY BlazorApp3/*.csproj ./BlazorApp3/
COPY BlazorApp3/*.config ./BlazorApp3/
RUN dotnet restore

# copy everything else and build app
COPY BlazorApp3/. ./BlazorApp3/
WORKDIR /app/BlazorApp3
RUN msbuild /p:Configuration=Release


# copy build artifacts into runtime image
FROM mcr.microsoft.com/dotnet/aspnet:5.0 AS runtime
WORKDIR /inetpub/wwwroot
COPY --from=build /app/BlazorApp3/. ./
