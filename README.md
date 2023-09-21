# Instructions

Languages used: C#

Web framework: .NET 7

To run this project, do the following:

Download .NET 7 SDK here - https://dotnet.microsoft.com/en-us/download/dotnet/7.0

Run the installer and in the terminal run: 

```dotnet --version```

Output should show the dotnet version installed



Within VS code terminal, run the following commands:

Build the app:

```dotnet build```

Install certs required for the app to run:

```dotnet dev-certs https --trust```

NB: After running this command, reopen your browser


Run the app: 

```dotnet run```

Access the application on this URL: https://localhost:7208/


## Containerization Instructions

In order to use docker for the application, the developer can use either docker to build the image 
and run the container as well. 

**Building the image**
- Change directory to the folder with the Dockerfiles then run

```bash

docker build -t your-image-name -f Dockerfile . 

```
- In order to start and run the application container run the following command in the terminal 


```bash 
docker run -p 7208:7208 -it your_image_name 
```

- To access the application, go to the url : http://localhost:7208

**To build the image and also start the containers with docker compose use **

- Change directory to the folder with the Dockerfiles then run
```bash
docker-compose up --build
```

This command will start both the application container and the SQLite database container. 