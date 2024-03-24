FROM openjdk:8-alpine

EXPOSE 8083
WORKDIR /usr/src/app

COPY target/users-api-0.0.1-SNAPSHOT.jar ./

CMD ["java", "-jar", "users-api-0.0.1-SNAPSHOT.jar"]

