FROM openjdk:17
WORKDIR /usr/myapp
copy target/dockerapp-0.0.1-SNAPSHOT.jar  myapp.jar
#if another build happens then the above artifact gets changed so to overcome the versions compatibility we can write like below also
#COPY target/*.jar myapp.jar -> this also works fine
#here *.jar refers to any file that ends with .jar 
EXPOSE 8080
ENTRYPOINT ["java","-jar","myapp.jar"]

