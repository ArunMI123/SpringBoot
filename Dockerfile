FROM openjdk:8
ADD target/spring-boot-web-jsp-1.0.jar spring-boot-web-jsp-1.0.jar
EXPOSE 8082
ENTRYPOINT ["java","-jar","spring-boot-web-jsp-1.0.jar"]

sed -i "s/IMAGE/$(Build.BuildNumber)/" Deployment.yaml

apiVersion: apps/v1beta1
kind: Deployment
metadata:
  name: web-deployment
  namespace: honda
spec:
  replicas: 1
  template:
    metadata:
      labels:
        app: web
    spec:
      containers:
      - name: web
        image: hondaregistry.azurecr.io/web_ui:IMAGE
        resources:
          limits:
            cpu: 300m
            memory: 750Mi
        ports:
        - containerPort: 80
      imagePullSecrets:
        - name: hondasecret
