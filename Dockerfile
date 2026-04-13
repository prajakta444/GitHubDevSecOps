
# ✅ Use supported Java base image
FROM eclipse-temurin:17-jdk-alpine

VOLUME /tmp

# ✅ Copy built JAR from target folder
COPY target/*.jar app.jar

ENV PORT 5000
EXPOSE $PORT

# ✅ Run the application
ENTRYPOINT ["java","-jar","/app.jar"]
