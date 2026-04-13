
# ✅ Use supported Java base image
FROM eclipse-temurin:17-jdk-alpine

VOLUME /tmp

# ✅ Copy built JAR from target folder
COPY target/*.jar app.jar

ENV SERVER_PORT=8080
EXPOSE 8080

# ✅ Run the application
ENTRYPOINT ["java","-jar","/app.jar"]
