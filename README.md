# benchease
Part of CoDev synergy project, 202304. This includes REST API for search and get hot skills.

### Commands (Linux)
**Build**: `./gradlew build`

**Run**: `./gradlew bootRun`

**Debug** (runs at port 5005): `./gradlew bootRun --debug-jvm`

### Sample API
**Hello, world!** [http://localhost:8086/sample/hello](http://localhost:8086/sample/hello)

--- 

## Docker container setup
To build a docker image from BenchEase's DockerFile and run its container... 

_**Note**_: Commands are primarily for Debian Linux. 

1. Pull this project or get the DockerFile via wget. 
`wget https://raw.githubusercontent.com/HangerIsACat/benchease/main/docker/Dockerfile` 

2. Build a docker image from the DockerFile. 
`docker image build .` 

3. To check if image is built. It'll be an image with no name but take note of the image ID. 
`docker images` 

4. Create a container out of the image, exposing port 8086 to map it to 8181 (or specify another port for other ports). 
`docker container run --rm --detach --name benchease --publish 8181:8086 -it <docker image ID>` 

_Optional note_: Gradle build can be checked by using the container's console and checking if the src code is built. Check out "Checking the Build" section

5. To check if container is already running. 
`docker ps -a` 

6. Run BenchEase application as a detached process in the container. 
`docker exec --detach benchease ./gradlew bootRun` 

7. Run sample API after a few minutes to check. 

#### Checking the build
To see if Gradle was properly executed...

1. Use the container's console. 
`docker exec -it <container ID or name> /bin/bash` 

2. Check if the build directory exists. Check its contents too but this is somewhat optional. 
`ls build` 

3. If build directory doesn't exist, build the project. 
`./gradlew build` 

Or exit the console session and execute the command via exec. 
`docker exec --detach benchease ./gradlew bootRun` 

4. Check if build is a success via the console output and the build directory's existence. 
`ls build` 

Or if the console session was ended, execute the command via exec. 
`docker exec --detach benchease ls build` 

5. Go back to step 6 of "Docker container setup" to run the project. 


#### In case of any errors encountered while building the image...

1. Check if the the image is created. 
`docker images` 

2. If the image is created, check if there are existing containers created after the image. Check the image ID. 
`docker ps -a` 

3. If there are containers created, delete all of them (or retain 1). 
`docker container rm <container ID  or name>` 

4. If all of the containers created after the image are deleted, execute step 4 under Docker container setup. 

5. Use the container's console. 
`docker exec -it <container ID or name> /bin/bash` 

6. Try to execute the commands in the DockerFile manually, where it left off. 
