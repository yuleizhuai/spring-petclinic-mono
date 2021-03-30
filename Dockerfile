FROM openjdk:8-jre-alpine
MAINTAINER Fish Yu <lei.yu10@pacteraedge.com>

# Add the app itself
ARG JAR_FILE
ADD target/${JAR_FILE} /usr/share/app.jar

ENTRYPOINT ["java", "-jar", "/usr/share/app.jar"]
EXPOSE 8080