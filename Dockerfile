
FROM openjdk:8-jdk-alpine
EXPOSE 8080


#used to set the working directory for any subsequent RUN, CMD, ENTRYPOINT, COPY, and ADD instructions.
#It essentially changes the current directory within the Docker container where the commands will be executed.
WORKDIR /app


#Both ADD and COPY commands in a Dockerfile can be used to copy files from the local file system to the image.
#The COPY command is simpler and is recommended for most use cases. 
#It takes two arguments: the source path on the host and the destination path in the image. 

#The ADD command has additional features compared to COPY. 
#It can copy files, directories, and also supports URL fetching and unpacking compressed archives. 
#However, due to its additional features, it can be more complex and might have unexpected behavior.
COPY target/springboot-aws-example.jar . 


# Define the command to run your application

#use either CMD or ENTRYPOINT in your Dockerfile to specify the command that will be executed when the container starts. 
#The choice between CMD and ENTRYPOINT depends on your specific use case and requirements.

#If you're comfortable with the command being easily overridden using docker run, you can stick with CMD. 
#If you want to enforce the specified command and make it less likely to be overridden, you can use ENTRYPOINT.
ENTRYPOINT ["java", "-jar", "\springboot-aws-example.jar"]







