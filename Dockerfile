FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build-env

WORKDIR /app

# copy csproj and restore as distinct layers
COPY *.sln .
COPY *.csproj .
RUN dotnet restore

# copy everything else and build app
COPY . .
RUN dotnet publish -c release -o /publish


# Build runtime image
FROM mcr.microsoft.com/dotnet/aspnet:7.0
WORKDIR /publish
COPY --from=build-env /publish .


EXPOSE 5000
ENV ASPNETCORE_URLS=http://+:5000


ENTRYPOINT ["dotnet", "AmonyCoffeeMIS.dll"]