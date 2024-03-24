FROM openjdk:8-alpine

RUN apk add --no-cache maven

EXPOSE 8083

WORKDIR /usr/src/app

COPY pom.xml mvnw ./
COPY .mvn/ ./.mvn

RUN chmod +x mvnw

RUN ./mvnw dependency:resolve

COPY . .

RUN mvn install

CMD ["java", "-jar", "./target/users-api-0.0.1-SNAPSHOT.jar"]

