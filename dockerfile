FROM openjdk:11.0.7-slim
LABEL maintainer="francoperino20@gmail.com"
ARG JAR_FILE
ADD target/${JAR_FILE} zuul-0.0.1-SNAPSHOT.jar
RUN echo ${JAR_FILE}
EXPOSE 8081
ENTRYPOINT ["java","-jar","/zuul-0.0.1-SNAPSHOT.jar"]