FROM openjdk:8
ADD target/spring-boot-web-jsp-1.0.jar spring-boot-web-jsp-1.0.jar
EXPOSE 8082
ENTRYPOINT ["java","-jar","spring-boot-web-jsp-1.0.jar"]
