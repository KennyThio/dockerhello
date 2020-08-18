# For Java 8, try this
# FROM openjdk:8-jdk-alpine

# For Java 11, try this
FROM adoptopenjdk/openjdk11:alpine-jre

#First argument after COPY is a path of an application that we want to put into container.
#The second parameter, /usr/app/ , is a directory in a container where we put the app.
COPY ./target/dockerHelloWorld-0.0.1-SNAPSHOT.jar /usr/app/

#Here we instruct Docker to use /usr/app folder as a root
WORKDIR /usr/app

#we inform Docker that a container will listen to specific port
EXPOSE 8080

#tell Docker to run the application, where first value is a command and the last two are parameters.
ENTRYPOINT ["java", "-jar", "dockerHelloWorld-0.0.1-SNAPSHOT.jar"]