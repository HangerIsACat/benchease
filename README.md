# benchease
Part of CoDev synergy project, 202304. This includes REST API for search and get hot skills.

### Commands (Linux)
**Build**: `./gradlew build`

**Run**: `./gradlew bootRun`

**Debug** (runs at port 5005): `./gradlew bootRun --debug-jvm`

### Sample API
**Hello, world!** [http://localhost:8080/sample/hello](http://localhost:8080/sample/hello)

--- 

## Docker container setup
To build a docker image from BenchEase's DockerFile and run its container... 

_**Note**_: Commands are primarily for Debian Linux. 

1. Pull this project or get the DockerFile via wget. 
`wget https://github.com/HangerIsACat/benchease/blob/main/docker/Dockerfile` 

2. Build a docker image from the DockerFile. 
`docker image build .` 

3. To check if image is built. It'll be an image with no name but take note of the image ID. 
`docker images` 

4. Create a container out of the image. 
`docker container run --rm --detach --name benchease --publish 8080:8080 -it <docker image ID>` 

5. To check if container is already running. 
`docker ps -a` 

6. Run BenchEase application as a detached process in the container. 
`docker exec --detach benchease ./gradlew bootRun` 

7. Run sample API after a few minutes to check. 
