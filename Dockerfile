FROM adoptopenjdk/openjdk11
ARG JAR_FILE=paiza-api/build/libs/\*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom", "-Dserver.port=$PORT", "-jar","/app.jar"]